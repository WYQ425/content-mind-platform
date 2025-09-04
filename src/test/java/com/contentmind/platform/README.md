# ContentMind Platform - 测试代码结构

## 目录说明

### 📁 controller - 控制器测试
使用MockMVC进行接口层测试，验证：
- HTTP请求响应
- 参数验证
- 权限控制
- 异常处理

### 📁 service - 业务服务测试
使用Mockito进行单元测试，验证：
- 业务逻辑正确性
- 异常处理
- 边界条件
- 事务处理

### 📁 repository - 数据访问测试
使用@DataJpaTest或TestContainers进行数据层测试，验证：
- SQL查询正确性
- 数据映射
- 事务回滚
- 约束检查

### 📁 integration - 集成测试
使用@SpringBootTest进行端到端测试，验证：
- 完整业务流程
- 组件间协作
- 配置正确性
- 外部依赖集成

## 测试规范

### 测试命名规范
- 单元测试: `ClassName + Test` (如: UserServiceTest)
- 集成测试: `ClassName + IntegrationTest` (如: UserControllerIntegrationTest)
- 测试方法: `methodName_condition_expectedResult`

### 测试覆盖率要求
- 整体覆盖率: >80%
- 核心业务类覆盖率: >90%
- 工具类覆盖率: >95%

### 测试数据管理
- 使用@Transactional确保测试数据隔离
- 避免硬编码测试数据
- 使用TestContainers进行数据库集成测试

### Mock使用原则
- 对外部依赖进行Mock
- 对复杂逻辑进行真实测试
- 使用@MockBean进行Spring Context Mock