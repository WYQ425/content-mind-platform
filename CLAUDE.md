# ContentMind Platform - Claude Code项目配置

## 🎯 项目信息

- **项目名称**: 智慧内容社区平台 (ContentMind Platform)
- **版本**: 1.0.0
- **描述**: 面向企业内部和开发者社区的智能化内容管理平台，集成AI辅助写作、智能推荐、实时协作等现代化功能
- **技术栈**: Spring Boot 2.7 + MySQL 8.0 + Redis 7.0 + React 18 + TypeScript
- **Java版本**: 11
- **构建工具**: Maven 3.8+

## 🏗️ 技术架构

### 后端技术栈
- **框架**: Spring Boot 2.7.18
- **安全**: Spring Security + JWT
- **数据库**: MySQL 8.0 + MyBatis-Plus 3.5.3
- **缓存**: Redis 7.0
- **搜索**: Elasticsearch 7.17
- **消息队列**: RabbitMQ 3.11
- **文件存储**: 本地存储 (后期可扩展MinIO)
- **API文档**: Knife4j 3.0.3

### 前端技术栈
- **框架**: React 18 + TypeScript
- **构建工具**: Vite
- **UI框架**: Ant Design
- **状态管理**: Zustand
- **路由**: React Router 6
- **HTTP客户端**: Axios

## 📋 开发规范

### 代码风格
- **Java**: Google Java Style Guide
- **TypeScript**: Airbnb TypeScript Style Guide
- **格式化工具**: Spotless (Java) + Prettier (前端)
- **代码检查**: SpotBugs + ESLint
- **导入排序**: java, javax, org, com

### 命名规范
- **Java类名**: PascalCase (UserService, UserController)
- **Java方法名**: camelCase (getUserById, createUser)
- **Java常量**: UPPER_SNAKE_CASE (MAX_FILE_SIZE, DEFAULT_PAGE_SIZE)
- **数据库表名**: snake_case (users, user_roles, article_tags)
- **数据库字段名**: snake_case (created_at, user_id, is_deleted)
- **RESTful API**: kebab-case (/api/users, /api/article-categories)

### 注释规范
- **JavaDoc**: 所有public类和方法必须有完整的JavaDoc注释
- **作者标签**: @author ContentMind Team
- **版本标签**: @version 1.0.0
- **创建时间**: @since 2024-01-01
- **参数描述**: 所有@param和@return都要有详细说明

### Git规范
- **提交规范**: Conventional Commits
- **分支策略**: Git Flow
- **分支命名**: feature/功能名, hotfix/修复名, release/版本号
- **提交信息**: type(scope): description

## 🧪 测试策略

### 测试类型
- **单元测试**: JUnit 5 + Mockito
- **集成测试**: @SpringBootTest + TestContainers
- **前端测试**: Jest + React Testing Library
- **API测试**: MockMVC + Testcontainers
- **性能测试**: JMeter (可选)

### 测试覆盖率
- **目标覆盖率**: >80%
- **检查工具**: JaCoCo
- **排除文件**: 配置类、实体类、常量类
- **CI集成**: GitHub Actions自动运行测试

## 🚀 构建与部署

### Maven配置
```xml
<!-- 主要插件 -->
- spring-boot-maven-plugin: Spring Boot打包
- spotless-maven-plugin: 代码格式化
- jacoco-maven-plugin: 代码覆盖率
- spotbugs-maven-plugin: 静态代码分析
- dependency-check-maven: 安全漏洞检查
- maven-surefire-plugin: 单元测试
- maven-failsafe-plugin: 集成测试
```

### 环境配置
- **开发环境**: localhost:8080 (application-dev.yml)
- **测试环境**: test.contentmind.com (application-test.yml) 
- **生产环境**: api.contentmind.com (application-prod.yml)

## 🔧 质量标准

### 代码质量
- **SonarQube评分**: A级
- **代码重复度**: <5%
- **代码复杂度**: 方法复杂度<10
- **安全漏洞**: 0个高危漏洞

### 性能要求
- **接口响应时间**: 95%请求<200ms
- **数据库连接**: 最大200个连接
- **缓存命中率**: >80%
- **并发支持**: 1000+并发用户

### 安全要求
- **认证方式**: JWT Token + Refresh Token
- **密码加密**: BCrypt + Salt
- **SQL注入**: MyBatis-Plus预防
- **XSS防护**: Spring Security配置
- **HTTPS**: 生产环境强制HTTPS
- **OWASP**: 通过OWASP Top 10检查

## 📊 监控与日志

### 应用监控
- **健康检查**: Spring Boot Actuator
- **指标收集**: Micrometer + Prometheus
- **链路追踪**: Spring Cloud Sleuth (可选)
- **告警机制**: 基于指标阈值的自动告警

### 日志管理
- **日志框架**: SLF4J + Logback
- **日志级别**: DEBUG(开发) > INFO(测试) > WARN(生产)
- **日志格式**: 结构化JSON格式
- **日志轮转**: 100MB/文件，保留30天
- **敏感信息**: 自动脱敏处理

---

*本项目旨在打造一个现代化、智能化的内容管理平台，展示完整的Java后端开发能力和系统设计思维。*