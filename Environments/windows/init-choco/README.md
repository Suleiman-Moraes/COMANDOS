---

# 🛠️ Windows Environment Setup using Chocolatey

This guide will help you set up your development environment on Windows using **Chocolatey**, a package manager for Windows. By following these steps, you'll quickly install essential tools and configure your system for development.

## 📜 Step-by-Step Guide

### 1. **Open PowerShell as Administrator**

To start, open **PowerShell** with administrator privileges.

### 2. **Install Chocolatey**

Run the following commands to install Chocolatey:

```powershell
Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

### 3. **Install Development Tools via Chocolatey**

Use Chocolatey to install the following software:

```powershell
choco install microsoft-openjdk11
choco install spotify
choco install vscode
choco install postman
choco install dbeaver
choco install mobaxterm
choco install nodejs --version=16.4.0
choco install maven --version=3.6.3
choco install intellijidea-ultimate
choco install git
choco install googlechrome
choco install firefox
choco install opera-gx
choco install notepadplusplus
```

### 4. **Install Angular CLI**

After the above installations, open a new **PowerShell** window as Administrator and run the following command to install Angular CLI:

```bash
npm install -g @angular/cli@12.2.12
```

### 5. **Restart Your Computer**

Once all the installations are complete, restart your computer to ensure everything is set up correctly.

### 6. **Download JDK 21**

Download JDK 21 from the following link:

[Download OpenJDK 21](https://learn.microsoft.com/en-us/java/openjdk/download#openjdk-21)

Once downloaded, set the **IDEA_JDK** environment variable to point to your JDK 21 installation.

### 7. **Update Maven Settings**

You'll need to update the `settings.xml` file for Maven in the following locations:
- `C:\Users\seu.login\.m2\repository`
- `C:\ProgramData\chocolatey\lib\maven\apache-maven-3.6.3\conf`

### 8. **Update .gitconfig**

If necessary, update or create a `.gitconfig` file at:
- `C:\Users\seu.login`

---

By following these steps, you’ll have a fully configured Windows environment with essential development tools installed via Chocolatey.
