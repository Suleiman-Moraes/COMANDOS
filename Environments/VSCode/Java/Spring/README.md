---

# 🌱 VSCode Environment for Spring (Java)

Welcome to the **VSCode Environment for Spring**! This configuration is tailored for Java Spring development, providing the necessary tools, extensions, and settings to boost your productivity and streamline your workflow.

## 🚀 Quick Setup

1. **Clone the repository** ou navegue até o diretório `Environments/VSCode/Java/Spring`:
   ```bash
   git clone https://github.com/Suleiman-Moraes/UTIL.git
   cd UTIL/Environments/VSCode/Java/Spring
   ```

2. **Open the folder in VSCode**:
   ```bash
   code .
   ```

3. **Install recommended extensions** when prompted to fully equip your VSCode for Spring development.

4. Start coding your Spring Boot applications with ease!

## 🔧 Key Features

### 1. **Optimized Settings**
The configuration includes VSCode settings optimized for working with Spring applications, such as:
- **Java-specific linting and formatting** for Spring projects.
- **Enhanced IntelliSense** for Spring annotations and configurations.
- **Automatic imports** and suggestions for Spring libraries.

Check the `.vscode/settings.json` for all configurations.

### 2. **Recommended Extensions**
To enable a smoother experience in developing Spring applications, we recommend the following extensions:

- **Spring Boot Tools**: Provides rich support for running and debugging Spring Boot applications.
- **Java Extension Pack**: A bundle that includes support for Java development.
- **Spring Initializr**: Easily bootstrap new Spring projects.
- **Debugger for Java**: Debug Java applications directly within VSCode.
- **Maven for Java**: Manage your Spring project’s dependencies using Maven.

You can add these to your `extensions.json`:
```json
{
  "recommendations": [
    "vscjava.vscode-spring-boot",
    "vscjava.vscode-java-pack",
    "vscjava.vscode-spring-initializr",
    "vscjava.vscode-java-debug",
    "vscjava.vscode-maven"
  ]
}
```

### 3. **Launch Configurations**
This setup includes predefined configurations for running and debugging your Spring Boot applications directly within VSCode.

Check out the `launch.json` file for:
- **Spring Boot Run**: A simple configuration to run your Spring Boot app.
- **Spring Boot Debug**: Attach a debugger to your running Spring Boot application for in-depth analysis.

### 4. **Code Snippets**
Speed up common Spring-related tasks with custom code snippets. These snippets help you generate boilerplate code quickly, like controllers, services, and repositories.

Example Spring Controller snippet:
```json
{
  "Spring Controller": {
    "prefix": "spring-controller",
    "body": [
      "import org.springframework.web.bind.annotation.RestController;",
      "import org.springframework.web.bind.annotation.RequestMapping;",
      "import org.springframework.web.bind.annotation.GetMapping;",
      "",
      "@RestController",
      "@RequestMapping(\"/${1:api}\")",
      "public class ${2:ControllerName} {",
      "    @GetMapping",
      "    public String hello() {",
      "        return \"Hello, Spring!\";",
      "    }",
      "}"
    ],
    "description": "Create a Spring Boot REST controller"
  }
}
```

### 5. **Maven Support**
The setup also includes Maven integration, so you can build and manage dependencies efficiently within VSCode. The `tasks.json` is set up for common Maven tasks like:
- **mvn clean install**
- **mvn spring-boot:run**

## 📂 Folder Structure

- **settings.json**: VSCode settings tailored for Spring development.
- **launch.json**: Pre-configured tasks for running and debugging Spring Boot applications.
- **extensions.json**: Recommended extensions for an enhanced Spring development experience.
- **snippets/Spring.code-snippets**: Custom code snippets for faster Spring development.

## 📚 Further Resources

- [Spring Boot Documentation](https://spring.io/projects/spring-boot)
- [Java in VSCode](https://code.visualstudio.com/docs/languages/java)
- [Spring Initializr](https://start.spring.io/)

## 🙌 Contributions

We’re happy to welcome contributions! If you have suggestions or improvements for this setup, feel free to fork the repository, make changes, and open a pull request.

---
