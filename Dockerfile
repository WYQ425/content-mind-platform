# ContentMind Platform - 多阶段Docker构建文件

# 构建阶段
FROM maven:3.8-openjdk-11-slim AS build

# 设置工作目录
WORKDIR /app

# 复制Maven配置文件
COPY pom.xml .
COPY .mvn .mvn
COPY mvnw .

# 下载依赖（利用Docker缓存层）
RUN mvn dependency:go-offline -B

# 复制源代码
COPY src src

# 构建应用
RUN mvn clean package -DskipTests -B

# 运行阶段
FROM openjdk:11-jre-slim

# 设置时区
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# 安装curl用于健康检查
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# 创建应用用户（安全最佳实践）
RUN groupadd -r contentmind && useradd --no-log-init -r -g contentmind contentmind

# 设置工作目录
WORKDIR /app

# 从构建阶段复制JAR文件
COPY --from=build /app/target/content-mind-platform-*.jar app.jar

# 创建日志和上传目录
RUN mkdir -p /app/logs /app/uploads && \
    chown -R contentmind:contentmind /app

# 切换到应用用户
USER contentmind

# 暴露端口
EXPOSE 8080

# JVM参数优化
ENV JAVA_OPTS="-Xms512m -Xmx1024m -XX:+UseG1GC -XX:G1HeapRegionSize=16m -XX:+UseStringDeduplication -XX:+OptimizeStringConcat -Djava.security.egd=file:/dev/./urandom"

# 健康检查
HEALTHCHECK --interval=30s --timeout=10s --start-period=60s --retries=3 \
  CMD curl -f http://localhost:8080/api/actuator/health || exit 1

# 启动命令
ENTRYPOINT exec java $JAVA_OPTS -jar app.jar