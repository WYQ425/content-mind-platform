---
description: Java Enterprise development style for ContentMind Platform with Google Java style, Spring annotations, comprehensive JavaDoc, and testing standards
---

# Java Enterprise Development Style for ContentMind Platform

## Code Style Configuration
- Follow Google Java code style guidelines
- Use 4-space indentation consistently
- Maintain 120 character line length limit
- Apply Java-style braces (opening brace on same line)
- Sort imports in order: java, javax, org, com
- Remove unused imports and organize them properly

## Documentation Standards
- Write comprehensive JavaDoc comments for all public classes, methods, and fields
- MANDATORY JavaDoc tags for all classes:
  - @author with developer name
  - @version with current version
  - @since with initial version
- For methods, include:
  - Detailed parameter descriptions using @param
  - Return value descriptions using @return
  - Exception descriptions using @throws
- Use proper HTML formatting in JavaDoc when needed

## Spring Framework Annotations
Highlight and properly format these Spring annotations:
- Controller layer: @RestController, @RequestMapping, @GetMapping, @PostMapping, @PutMapping, @DeleteMapping
- Service layer: @Service, @Transactional, @Async
- Repository layer: @Repository, @Query, @Modifying
- Dependency injection: @Autowired, @Qualifier, @Value
- Validation: @Valid, @Validated, @NotNull, @NotBlank, @Size, @Min, @Max, @Email
- Configuration: @Configuration, @Bean, @Profile, @Conditional

## Exception Handling Template
Use this standardized exception handling approach:
- Create custom exception classes extending appropriate base exceptions
- Use @ControllerAdvice for global exception handling
- Log exceptions with appropriate levels (ERROR for system issues, WARN for business logic issues)
- Return consistent error response format with error code, message, and timestamp
- Include correlation IDs for request tracing

## Testing Code Standards
- Use JUnit 5 annotations: @Test, @BeforeEach, @AfterEach, @DisplayName, @ParameterizedTest
- Follow naming convention: methodName_StateUnderTest_ExpectedBehavior
- Mock objects should be named with "Mock" suffix (e.g., userServiceMock)
- Use @MockBean for Spring context mocking
- Structure tests with Given-When-Then pattern in comments
- Include both positive and negative test cases
- Use meaningful assertions with custom error messages

## ContentMind Platform Specific Guidelines
- Always check for null parameters and validate input data
- Use appropriate HTTP status codes for REST endpoints
- Implement proper pagination for list endpoints
- Include audit fields (createdAt, updatedAt, createdBy, updatedBy) in entity classes
- Use DTOs for API request/response objects
- Apply consistent naming conventions for database entities and columns
- Implement proper transaction boundaries
- Use builder patterns for complex object creation

## Code Quality Checks
When completing tasks, ensure:
- All code follows the specified style guidelines
- JavaDoc is complete and properly formatted
- Unit tests are written with good coverage
- No unused imports or dead code
- Proper exception handling is implemented
- Spring annotations are used correctly
- Database transactions are properly managed