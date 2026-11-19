# Courier and Parcel Tracking Management System — Scenario 26

## Console-first academic project
This package is organized for a Java terminal demonstration with MySQL DBMS integration and Python FDS processing.
## Project folders
- `Java-Console/` — menu-driven Java application (VS Code terminal).
- `Database/` — MySQL schema and optional sample data used by the Java application.
- `DBMS-Database/` — SQL exercises, queries, relational model and normalization notes.
- `FDS-Python/` — reads the latest MySQL shipment records and creates `output/processed_shipments.csv`.
- `FDS-Visualization/` — creates charts from processed shipment data.
- `SE-Diagrams/` — four distinct diagrams and editable Graphviz source files.
- `SE-SRS/` — Software Requirements Specification.
- `SE-Testing/` — test plan and execution notes.

## Run Java console application
Requirements: JDK 17+, Apache Maven 3.8+, MySQL 8+.

1. Start MySQL Server.
2. In MySQL Workbench, execute `Database/schema.sql`. Optionally execute `Database/sample_data.sql` once.
3. Open `Java-Console/` in VS Code.
4. In PowerShell, set the connection details and run:

```powershell
$env:DB_URL = "jdbc:mysql://localhost:3306/courier_tracking?useSSL=false&serverTimezone=UTC"
$env:DB_USER = "root"
$env:DB_PASSWORD = "YOUR_MYSQL_PASSWORD"
mvn clean package
java -jar target/courier-parcel-tracking-1.0.0.jar
```

Or run `run.bat` and enter your MySQL credentials when prompted.

## Run FDS after Java data entry
The Java application writes operational records to MySQL. After adding/updating parcels, open a second terminal and run:

```powershell
cd FDS-Python
python -m pip install -r requirements.txt
$env:DB_USER = "root"
$env:DB_PASSWORD = "YOUR_MYSQL_PASSWORD"
python retrieve_preprocess.py
```

The latest records are exported to `FDS-Python/output/processed_shipments.csv`. FDS is a separate run; it is not triggered automatically by every Java transaction. Then run the visualization script from `FDS-Visualization/` after installing its requirements.

## Important
Use the same MySQL server/database credentials in Java and Python. Do not put your real password into shared source files.
