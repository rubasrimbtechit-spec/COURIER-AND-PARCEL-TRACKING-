@echo off
setlocal
cd /d "%~dp0"
if not defined DB_URL set "DB_URL=jdbc:mysql://localhost:3306/courier_tracking?useSSL=false&serverTimezone=UTC"
if not defined DB_USER set /p DB_USER=Enter MySQL username (usually root): 
if not defined DB_PASSWORD set /p DB_PASSWORD=Enter MySQL password: 
if not exist "target\courier-parcel-tracking-1.0.0.jar" (
  echo Building console application...
  call mvn clean package
  if errorlevel 1 (
    echo Build failed. Install JDK 17+ and Apache Maven, then retry.
    exit /b 1
  )
)
echo Starting Courier and Parcel Tracking console application...
java -jar "target\courier-parcel-tracking-1.0.0.jar"
endlocal
