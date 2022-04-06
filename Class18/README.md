#Many to many relationships

![download (2)](https://user-images.githubusercontent.com/97829483/161889029-2af0db58-5da1-4193-b7de-5c83d07d40c5.png)
 any given employee can be assigned to multiple projects and a project may have multiple employees working for it, leading to a many-to-many association between the two.
 
 ###Database Setup
 we need to create 2 tables, employee and project, the relation many to many between them need other table, employee_project, the primary key for this table is, employee-id and project-id togather, and each one 
 is already forign key. 
 
 ###The Model Classes
 we need to create model for each table, then we create employee class model and project class model each  one has the relation with the other table, its @ManyToMany
 
 ##Execution
 "We can see the many-to-many relationship between the two entities created in the database: the employee, project, and employee_project tables with sample data representing the relationship."
