# 🚀 ContentMind Platform

> 智慧内容社区平台 - 面向企业内部和开发者社区的智能化内容管理平台

[![Java](https://img.shields.io/badge/Java-11-orange.svg)](https://www.oracle.com/java/)
[![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.7.18-brightgreen.svg)](https://spring.io/projects/spring-boot)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-blue.svg)](https://www.mysql.com/)
[![Redis](https://img.shields.io/badge/Redis-7.0-red.svg)](https://redis.io/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## 📖 项目简介

ContentMind Platform 是一个现代化的智慧内容社区平台，集成了AI辅助写作、智能推荐、实时协作等功能，为企业内部和开发者社区提供完整的内容管理解决方案。

### 🎯 核心特性

- 🤖 **AI驱动**: 智能写作助手 + 内容推荐算法
- 🚀 **高性能**: 支持10万+并发用户，毫秒级响应
- 🔒 **企业级**: 完整权限体系 + 数据安全保障
- 📊 **数据驱动**: 用户行为分析 + 内容质量评估
- ⚡ **实时协作**: WebSocket实时编辑和通知
- 🔍 **智能搜索**: Elasticsearch全文搜索 + 语义搜索

## 🏗️ 技术架构

### 后端技术栈
- **框架**: Spring Boot 2.7.18
- **安全**: Spring Security + JWT认证
- **数据库**: MySQL 8.0 + MyBatis-Plus 3.5.3
- **缓存**: Redis 7.0
- **搜索**: Elasticsearch 7.17
- **消息队列**: RabbitMQ 3.11
- **文档**: Knife4j (Swagger)
- **监控**: Spring Boot Actuator + Micrometer

### 前端技术栈
- **框架**: React 18 + TypeScript
- **构建**: Vite
- **UI**: Ant Design
- **状态管理**: Zustand
- **路由**: React Router 6

### 运维技术栈
- **容器化**: Docker + Docker Compose
- **CI/CD**: GitHub Actions
- **代理**: Nginx
- **监控**: Prometheus + Grafana (计划中)

## 🚀 快速开始

### 环境要求

- Java 11+
- Maven 3.8+
- MySQL 8.0+
- Redis 7.0+
- Node.js 18+ (前端开发)

### 本地开发

1. **克隆项目**
```bash
git clone https://github.com/WYQ425/content-mind-platform.git
cd content-mind-platform
```

2. **配置数据库**
```bash
# 创建数据库
mysql -u root -p
CREATE DATABASE content_mind_dev CHARACTER SET utf8mb4;

# 导入初始化脚本
mysql -u root -p content_mind_dev < src/main/resources/db/schema.sql
```

3. **配置Redis**
```bash
# 启动Redis服务
redis-server
```

4. **启动后端服务**
```bash
# 安装依赖并启动
mvn clean install
mvn spring-boot:run
```

5. **访问应用**
- API接口: http://localhost:8080/api
- API文档: http://localhost:8080/api/doc.html
- 健康检查: http://localhost:8080/api/actuator/health

### Docker 部署

```bash
# 构建并启动所有服务
docker-compose up -d

# 查看服务状态
docker-compose ps

# 查看日志
docker-compose logs -f app
```

## 📚 项目结构

```
content-mind-platform/
├── .claude/                    # Claude Code配置
│   ├── agents/                 # 子代理配置
│   ├── config/                 # 配置文件
│   ├── hooks/                  # Git钩子
│   └── output-styles/          # 代码样式
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com/contentmind/platform/
│   │   │       ├── common/     # 公共组件
│   │   │       ├── config/     # 配置类
│   │   │       ├── controller/ # 控制器
│   │   │       ├── entity/     # 实体类
│   │   │       ├── service/    # 业务服务
│   │   │       ├── repository/ # 数据访问
│   │   │       └── util/       # 工具类
│   │   └── resources/
│   │       ├── config/         # 配置文件
│   │       ├── db/            # 数据库脚本
│   │       └── static/        # 静态资源
│   └── test/                  # 测试代码
├── docs/                      # 项目文档
├── scripts/                   # 部署脚本
├── CLAUDE.md                  # Claude Code配置
├── docker-compose.yml         # Docker配置
└── README.md                  # 项目说明
```

## 🧪 测试

### 单元测试
```bash
# 运行单元测试
mvn test

# 生成测试报告
mvn jacoco:report
```

### 集成测试
```bash
# 运行集成测试
mvn failsafe:integration-test
```

### 代码质量检查
```bash
# 代码格式检查
mvn spotless:check

# 代码格式修复
mvn spotless:apply

# 静态代码分析
mvn spotbugs:check

# 安全漏洞检查
mvn dependency-check:check
```

## 📊 API 文档

项目使用 Knife4j 生成 API 文档，启动项目后访问：
- **开发环境**: http://localhost:8080/api/doc.html
- **测试环境**: http://test.contentmind.com/doc.html

## 🔧 开发工具

### 推荐IDE插件
- **IntelliJ IDEA**: 
  - Lombok Plugin
  - MyBatis Log Plugin
  - Rainbow Brackets
  - GitToolBox

### 代码风格
项目采用 Google Java Style Guide，使用 Spotless 自动格式化代码。

### Git 提交规范
使用 Conventional Commits 规范：
```
feat(user): add user registration feature
fix(auth): resolve JWT token validation issue
docs(readme): update API documentation
```

## 🤝 贡献指南

1. Fork 项目
2. 创建功能分支 (`git checkout -b feature/amazing-feature`)
3. 提交变更 (`git commit -m 'feat: add amazing feature'`)
4. 推送分支 (`git push origin feature/amazing-feature`)
5. 创建 Pull Request

## 📝 更新日志

查看 [CHANGELOG.md](CHANGELOG.md) 了解版本更新历史。

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🙏 致谢

- [Spring Boot](https://spring.io/projects/spring-boot) - 强大的Java应用框架
- [MyBatis-Plus](https://baomidou.com/) - 优秀的MyBatis增强工具
- [Ant Design](https://ant.design/) - 企业级UI设计语言
- [Claude Code](https://claude.ai/code) - 强大的AI编程助手

## 📧 联系方式

- 作者: WYQ425
- 邮箱: [your-email@example.com]
- 项目地址: [https://github.com/WYQ425/content-mind-platform]

---

⭐ 如果这个项目对您有帮助，请给它一个星星！