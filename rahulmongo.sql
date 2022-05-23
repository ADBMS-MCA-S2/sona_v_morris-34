use employee
createCollection("employee_details")
db.employee_details.insert({"eid":101, "ename" : "arun", "dept" : "production", "desig" : "hr", "salary" : 55500, "yoj" : 2000, "address" : { "dno" : 156, "street" : "chinnakada", "locality" : "jn", "city" : "kollam" }})
db.employee_details.insert({"eid" : 102, "ename" : "arjun", "dept" : "sales", "desig" : "manager", "salary" : 75000, "yoj" : 1998, "address" : { "dno" : 207, "street" : "manipur", "locality" : "balanagar", "city" : "hyderabad" }})
db.employee_details.insert({"eid" : 103, "ename" : "rahul", "dept" : "production", "desig" : "developer", "salary" : 66000, "address" : { "dno" : 304, "street" : "banglore", "locality" : "shivatemple", "city" : "banglore" }})
db.employee_details.insert({"eid" : 104, "ename" : "maya", "dept" : "sales", "desig" : "hr", "salary" : 50000, "yoj" : 2001, "address" : { "dno" : 207, "street" : "manipur", "locality" : "balanagar", "city" : "hyderabad" }})
db.employee_details.find()
