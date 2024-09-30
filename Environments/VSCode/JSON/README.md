---

# 📂 VSCode Environment for JSON Files

Welcome to the **VSCode Environment for JSON**! This setup is designed to provide a streamlined experience when working with JSON files, offering useful tools for editing, validating, and navigating large JSON datasets.

## 🚀 Quick Setup

1. **Clone the repository** or navigate diretamente para o diretório `Environments/VSCode/JSON`:
   ```bash
   git clone https://github.com/Suleiman-Moraes/UTIL.git
   cd UTIL/Environments/VSCode/JSON
   ```

2. **Open the folder in VSCode**:
   ```bash
   code .
   ```

3. **Install the recommended extensions** when prompted to enhance your experience with JSON files.

4. You're now set up for efficient JSON file management!

## 🔧 Key Features

### 1. **Optimized VSCode Settings**
This configuration includes settings specifically tuned for working with JSON files:
- **Auto-formatting** to ensure your JSON files are always well-structured.
- **Syntax validation** for error checking as you edit.
- **Schema validation** for compliance with common JSON schemas (like `package.json` or `.eslintrc`).

Check out the settings in the `.vscode/settings.json` file to see all adjustments.

### 2. **Recommended Extensions**
To enhance the development experience when dealing with JSON, the following VSCode extensions are recommended:

- **JSON Tools**: Provides enhanced editing tools and features for JSON files.
- **Prettier**: Automatically formats your JSON files on save.
- **JSON to TS**: Quickly convert JSON objects into TypeScript interfaces.
- **vscode-json-languageservice**: Built-in IntelliSense and JSON schema support.

Add these to your `extensions.json`:
```json
{
  "recommendations": [
    "mohsen1.prettify-json",
    "esbenp.prettier-vscode",
    "Gregoire.vscode-json-to-ts",
    "vscode.json-language-features"
  ]
}
```

### 3. **Code Snippets**
Simplify repetitive tasks with these handy JSON-focused snippets:
- **Sample JSON Structure**: Quickly insert common JSON patterns.
- **Schema Template**: A basic template for defining JSON schemas.

Example snippet:
```json
{
  "Basic JSON structure": {
    "prefix": "json-structure",
    "body": [
      "{",
      "  \"$schema\": \"${1:http://json-schema.org/draft-07/schema#}\",",
      "  \"type\": \"object\",",
      "  \"properties\": {",
      "    \"${2:propertyName}\": {",
      "      \"type\": \"${3:string}\"",
      "    }",
      "  },",
      "  \"required\": [\"${2:propertyName}\"]",
      "}"
    ],
    "description": "Basic JSON schema structure"
  }
}
```

### 4. **Launch Configurations**
Although JSON files generally don’t require debugging, this setup is integrated with extensions to help you validate or even convert JSON to other formats such as TypeScript during your workflow.

## 📂 Folder Structure

- **settings.json**: Holds the key VSCode configurations tailored for JSON.
- **launch.json**: If you need to extend or automate tasks with JSON, you can customize this.
- **extensions.json**: List of recommended extensions for an optimized JSON handling experience.
- **snippets/JSON.code-snippets**: Custom snippets for rapid JSON editing.

## 📚 Further Resources

- [JSON Schema Documentation](https://json-schema.org/)
- [VSCode JSON Language Support](https://code.visualstudio.com/docs/languages/json)

## 🙌 Contributing

We welcome contributions! If you have ideas for improving this environment or want to add new configurations, feel free to fork this repository, create a branch, and open a pull request.

---
