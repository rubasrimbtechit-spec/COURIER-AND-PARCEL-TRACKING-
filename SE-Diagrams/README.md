# Software Engineering Diagrams — Scenario 26

The four diagrams are intentionally different, following the supplied four-page visual reference:

1. **Class_Diagram.png** — UML class boxes with attributes, operations and class relationships.
2. **ER_Diagram.png** — Chen-style ER model with entity rectangles, relationship diamonds and attribute ovals. Primary keys are marked (PK); unique fields are marked (Unique).
3. **System_Architecture_Diagram.png** — layered architecture from users through the Java console, JDBC and MySQL, then FDS Python processing and visualization.
4. **Use_Case_Diagram.png** — actors outside a system boundary, use-case ovals, and include/read relationships.

Editable Graphviz `.dot` source files are supplied beside each PNG. To regenerate an image, install Graphviz and run `dot -Tpng Diagram_Name.dot -o Diagram_Name.png`.
