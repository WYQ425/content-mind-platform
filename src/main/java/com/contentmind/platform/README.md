# ContentMind Platform - Java源代码结构

## 目录说明

### 📁 common - 公共组件
- **annotation** - 自定义注解
- **aspect** - AOP切面处理
- **config** - 配置类
- **constant** - 常量定义
- **enums** - 枚举类型
- **exception** - 异常处理
- **response** - 统一响应格式
- **utils** - 工具类

### 📁 controller - 控制器层
- **admin** - 管理后台接口
- **api** - 前端API接口

### 📁 dto - 数据传输对象
- **request** - 请求参数对象
- **response** - 响应数据对象

### 📁 entity - 实体类
JPA实体类，对应数据库表结构

### 📁 repository - 数据访问层
MyBatis-Plus数据访问接口

### 📁 service - 业务服务层
- **impl** - 服务实现类
- 接口定义在service根目录

### 📁 config - 配置类
Spring配置类，如数据库配置、缓存配置等

### 📁 security - 安全相关
认证授权相关类，JWT处理等

## 编码规范

1. **包命名**: 全小写，使用点分隔
2. **类命名**: PascalCase（首字母大写驼峰）
3. **方法命名**: camelCase（首字母小写驼峰）
4. **常量命名**: UPPER_SNAKE_CASE（全大写，下划线分隔）
5. **注释**: 所有public类和方法必须有JavaDoc注释