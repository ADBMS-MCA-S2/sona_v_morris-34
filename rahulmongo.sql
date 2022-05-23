use employee
createCollection("employee_details")
db.employee_details.insert({"eid":101, "ename" : "arun", "dept" : "production", "desig" : "hr", "salary" : 55500, "yoj" : 2000, "address" : { "dno" : 156, "street" : "chinnakada", "locality" : "jn", "city" : "kollam" }})
db.employee_details.insert({"eid" : 102, "ename" : "arjun", "dept" : "sales", "desig" : "manager", "salary" : 75000, "yoj" : 1998, "address" : { "dno" : 207, "street" : "manipur", "locality" : "balanagar", "city" : "hyderabad" }})
db.employee_details.insert({"eid" : 103, "ename" : "rahul", "dept" : "production", "desig" : "developer", "salary" : 66000, "address" : { "dno" : 304, "street" : "banglore", "locality" : "shivatemple", "city" : "banglore" }})
db.employee_details.insert({"eid" : 104, "ename" : "maya", "dept" : "sales", "desig" : "hr", "salary" : 50000, "yoj" : 2001, "address" : { "dno" : 207, "street" : "manipur", "locality" : "balanagar", "city" : "hyderabad" }})
db.employee_details.find()
db.employee_details.find().pretty()


db.employee_details.updateOne({"ename":"maya"},{$inc:{"salary":5000}})
db.employee_details.find({"desig":"developer"})
db.employee_details.find({"desig":"developer"}).pretty()
db.employee_details.find({"ename":"rahul"},{"salary":1}).pretty()
db.employee_details.find({},{"address.city":1}).pretty()


//push keyword
 db.employee_details.updateMany({"eid":101},{$push:{"project":10}})
//pull 
 db.employee_details.updateMany({"eid":101},{$pull:{"project":10}})
//addToSet
 db.employee_details.updateMany({"eid":101},{$addToSet:{"project":10}})
//AddToSet array inside an array
 db.employee_details.updateMany({"eid":101},{$addToSet:{"project":[20,30]}})
//regular expression regex
 db.employee_details.find({"ename":{$regex:"ya"}}).pretty()
//ename of all employees
 db.employee_details.find({},{"ename":1})
 //ename starting with a details
  db.employee_details.find({"ename":{$regex:"^a"}}).pretty()
  //emplyee names starting with a
  db.employee_details.find({"ename":{$regex:"^a"}},{"ename":1}).pretty()
  //employee names ending with n
   db.employee_details.find({"ename":{$regex:"n$"}},{"ename":1}).pretty()
   //
   db.employee_details.remove({"ename":"maya"})
   //
   db.employee_details.deleteOne({"ename":"maya"})
   //
   db.employee_details.deleteMany({"ename":"maya"})
   
   
   
   
  
