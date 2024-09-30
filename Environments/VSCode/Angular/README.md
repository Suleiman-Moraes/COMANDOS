---

# ⚡ VSCode Environment for Angular

Welcome to the **VSCode Environment for Angular**! This folder contains the optimal settings, extensions, and configurations to enhance your development workflow when working with Angular projects.

## 🚀 Quick Setup

To start using this setup, follow these steps:

1. **Clone the repository** or navigate to the `Environments/VSCode/Angular` folder if you're already working within the repo:
   ```bash
   git clone https://github.com/Suleiman-Moraes/UTIL.git
   cd UTIL/Environments/VSCode/Angular
   ```

2. **Open the folder in VSCode**:
   ```bash
   code .
   ```

3. **Install the recommended extensions** when prompted to optimize your Angular development experience.

4. You're ready to code!

## 🔧 Key Features

### 1. **Tailored VSCode Settings**
This setup includes customized settings designed to streamline Angular development, focusing on:
- **Auto-formatting and linting** for TypeScript and HTML.
- **Angular-specific Intellisense** and code navigation enhancements.
- **Optimized file structure** to adhere to Angular best practices.

Find all settings in the `.vscode/settings.json` file.

### 2. **Recommended Extensions**
For a productive Angular development experience, the following VSCode extensions are recommended:

- **Angular Language Service**: Provides helpful tips, code completion, and error checking in templates.
- **TSLint**: Enforces TypeScript code style and best practices.
- **Prettier**: Ensures consistent code formatting.
- **Debugger for Chrome**: Debug your Angular app directly from VSCode.

Add these recommendations by including the snippet below in your `extensions.json`:
```json
{
  "recommendations": [
    "Angular.ng-template",
    "ms-vscode.vscode-typescript-tslint-plugin",
    "esbenp.prettier-vscode",
    "msjsdiag.debugger-for-chrome"
  ]
}
```

### 3. **Launch Configurations**
Debugging is simplified with pre-configured launch settings that let you run and debug your Angular application in the browser directly from VSCode.

Check the `launch.json` file for details on:
- `ng serve` with Chrome debugging
- Unit test execution directly from the IDE

### 4. **Code Snippets**
Speed up your development with custom Angular snippets:
- **Component boilerplate**: Quickly scaffold Angular components.
- **Service and Module generation snippets** to make Angular development faster.

Example snippet for an Angular component:
```json
{
  "Angular Component": {
    "prefix": "ng-component",
    "body": [
      "import { Component } from '@angular/core';",
      "",
      "@Component({",
      "  selector: '${1:app-component}',",
      "  templateUrl: './${1:app-component}.component.html',",
      "  styleUrls: ['./${1:app-component}.component.css']",
      "})",
      "export class ${1:AppComponent} {",
      "  constructor() {}",
      "}"
    ],
    "description": "Create a new Angular component"
  }
}
```

## 📂 Folder Structure

- **settings.json**: Contains the optimized VSCode settings for Angular.
- **launch.json**: Predefined tasks for Angular app debugging.
- **extensions.json**: Suggested extensions to enhance Angular development.
- **snippets/Angular.code-snippets**: Angular-specific code snippets.

## 📚 Further Resources

- [Official Angular Documentation](https://angular.io/docs)
- [VSCode Angular Tools](https://marketplace.visualstudio.com/items?itemName=Angular.ng-template)

## 🙌 Contributions

Feel free to contribute to this repository! If you have any improvements, suggestions, or additional configurations, please open a pull request or submit an issue.

---

This will create a user-friendly, well-structured `README.md` for your VSCode environment dedicated to Angular projects, making it easy for others to get up and running quickly!
