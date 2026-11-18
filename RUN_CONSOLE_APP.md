# Run Scenario 26 in the VS Code Terminal

For an interactive, menu-driven terminal demonstration, use the Java console application in `JP-Source` (not the Spring Boot `Backend` folder).

1. Extract the ZIP and open the `Courier_Parcel_Tracking_System` folder in VS Code.
2. Install JDK 17+, Apache Maven, MySQL Server, and the VS Code Extension Pack for Java.
3. In MySQL Workbench, execute `Database/schema.sql`. Optionally execute `Database/sample_data.sql` once for demo records.
4. In VS Code Explorer, open the `JP-Source` folder. Open **Terminal → New Terminal**.
5. In PowerShell, set the database connection and run the application:

```powershell
$env:DB_URL = "jdbc:mysql://localhost:3306/courier_tracking?useSSL=false&serverTimezone=UTC"
$env:DB_USER = "root"
$env:DB_PASSWORD = "YOUR_MYSQL_PASSWORD"
mvn clean package
java -jar target/courier-parcel-tracking-1.0.0.jar
```

Replace the password placeholder with your own MySQL password. Alternatively, run `run.bat` from Command Prompt; it asks for the MySQL credentials.

The terminal displays a numbered menu. Enter `1` to add a customer, `2` to list customers, `3` to register a parcel, `7` to track a parcel, and `0` to exit. The menu repeats after each action. See `JP-Source/README.md` for all menu choices and troubleshooting.
