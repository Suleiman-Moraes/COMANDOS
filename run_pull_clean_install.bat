@echo off
setlocal enabledelayedexpansion

rem Configurar variáveis de ambiente
set "MAVEN_HOME=%~1"
set "JAVA_HOME=%~2"
set "PROJECT_DIR=%~3"
set "BRANCH_NAME=%~4"
set "BUILD_OFFLINE=%~5"
set "SKIP_TESTS=%~6"

rem Verificar se todas as variáveis necessárias estão definidas
if "%MAVEN_HOME%"=="" (
    echo Usage: %0 "<maven_home>" "<java_home>" "<project_dir>" "<branch_name>" [<build_offline>] [<skip_tests>]
    exit /b 1
)

if "%JAVA_HOME%"=="" (
    echo Usage: %0 "<maven_home>" "<java_home>" "<project_dir>" "<branch_name>" [<build_offline>] [<skip_tests>]
    exit /b 1
)

if "%PROJECT_DIR%"=="" (
    echo Usage: %0 "<maven_home>" "<java_home>" "<project_dir>" "<branch_name>" [<build_offline>] [<skip_tests>]
    exit /b 1
)

if "%BRANCH_NAME%"=="" (
    echo Usage: %0 "<maven_home>" "<java_home>" "<project_dir>" "<branch_name>" [<build_offline>] [<skip_tests>]
    exit /b 1
)

rem Verificar se os diretórios existem
if not exist "%MAVEN_HOME%" (
    echo Maven home directory does not exist: %MAVEN_HOME%
    exit /b 1
)

if not exist "%JAVA_HOME%" (
    echo Java home directory does not exist: %JAVA_HOME%
    exit /b 1
)

if not exist "%PROJECT_DIR%" (
    echo Project directory does not exist: %PROJECT_DIR%
    exit /b 1
)

rem Verificar se JAVA_HOME aponta para um JDK
if not exist "%JAVA_HOME%\bin\javac.exe" (
    echo JAVA_HOME does not point to a JDK: %JAVA_HOME%
    exit /b 1
)

rem Adicionar Maven e Java ao PATH
set "PATH=%MAVEN_HOME%\bin;%JAVA_HOME%\bin;%PATH%"

rem Navegar para o diretório do projeto
cd "%PROJECT_DIR%"

echo Checking out branch %BRANCH_NAME%...
git checkout %BRANCH_NAME%
if errorlevel 1 (
    echo Git checkout failed, continuing with Maven build...
)

echo Pulling latest code from Git...
git pull origin %BRANCH_NAME%
if errorlevel 1 (
    echo Git pull failed, continuing with Maven build...
)

rem Construir os argumentos do Maven
set "MAVEN_ARGS=clean package"

if "%BUILD_OFFLINE%"=="true" (
    set "MAVEN_ARGS=!MAVEN_ARGS! --offline"
)

if "%SKIP_TESTS%"=="true" (
    set "MAVEN_ARGS=!MAVEN_ARGS! -DskipTests"
)

echo Executing Maven: mvn !MAVEN_ARGS!
mvn !MAVEN_ARGS!
set MAVEN_EXIT_CODE=%ERRORLEVEL%

echo Maven exited with code !MAVEN_EXIT_CODE!

rem Verifica se o build Maven foi bem-sucedido
if !MAVEN_EXIT_CODE! neq 0 (
    echo Maven build failed.
    exit /b 1
)

echo Done.
pause

ren .\run_pull_clean_install.bat "C:\ProgramData\chocolatey\lib\maven\apache-maven-3.6.3" "C:\Program Files\Microsoft\jdk-11.0.20.8-hotspot" "C:\path\project" develop true true
ren .\run_pull_clean_install.bat "maven path" "java path" "project path" branch_name [offline] [DskipTests]
