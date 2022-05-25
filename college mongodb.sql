//Create a database named college and then create a collection named studlist. 
//Insert some values into it [You can use the data in test.json file]. 
// Write a MongoDB Query to:
1. Display name (both fname and lname) and mark of all female students in MCA department. 
2. Display the details of student who secured highest mark in the course MCA
3. Display all male students who secured A+ grade. 
4. Display the names of the top three students in Mechanical department. 
5. Display the details of female students [fname,lname,grade,mark,contact] who achieved a mark more than 90.
6. Display the details of students who secured mark, more than 80 but less than 90.
7. Display the details of students whose name starts with ‘V’ 
8. Display all students from Kollam 
9. Display all students who does not belong to neither Kollam nor Thiruvananthapuram
10. Display all female students who belong to either Kollam or Thiruvananthapuram 

use college
db.createCollection("studlist")
db.studlist.insert({"name":{"firstname":"sona","lastname":"morris"},"age":22,"gender":"female","department":"mca","mark":90,"grade":"A","contact":{"address":"edakunnathu veedu","place":"neendakara","city":"kollam","pincode":691582,"phone no":8340933896}})
db.studlist.insert({"name":{"firstname":"tony","lastname":"morris"},"age":20,"gender":"male","department":"mechanical","mark":95,"grade":"A+","contact":{"address":"edakunnathu veedu","place":"neendakara","city":"kollam","pincode":691582,"phone no":9633331306}})
db.studlist.insert({"name":{"firstname":"anusree","lastname":"TK"},"age":20,"gender":"female","department":"mechanical","mark":93,"grade":"A+","contact":{"address":"madamannil","place":"thalassery","city":"kannur","pincode":68234,"phone no":9895184618}})
db.studlist.insert({"name":{"firstname":"arun","lastname":"uday"},"age":23,"gender":"male","department":"mca","mark":91,"grade":"A+","contact":{"address":"deepam kottapuram","place":"paravoor","city":"kollamr","pincode":691582,"phone no":9948585645}})
db.studlist.insert({"name":{"firstname":"anju","lastname":"KC"},"age":30,"gender":"female","department":"mca","mark":82,"grade":"B+","contact":{"address":"sreenilayam","place":"kallada","city":"trivandrum","pincode":691500,"phone no":9956349845}})
db.studlist.insert({"name":{"firstname":"albert","lastname":"john"},"age":24,"gender":"male","department":"mechanical","mark":96,"grade":"A+","contact":{"address":"sree nivas","place":"kazhakuttam","city":"trivandrum","pincode":689544,"phone no":9956349823}})
db.studlist.insert({"name":{"firstname":"vinod","lastname":"desidarious"},"age":24,"gender":"male","department":"mechanical","mark":80,"grade":"B+","contact":{"address":"mary villa","place":"tangasseri","city":"kollam","pincode":682544,"phone no":9633096312}})
db.studlist.insert({"name":{"firstname":"varun","lastname":"shegar"},"age":23,"gender":"male","department":"mca","mark":86,"grade":"A","contact":{"address":"daisy cottage","place":"eravipuram","city":"kollam","pincode":682544,"phone no":9623456782}})
db.studlist.insert({"name":{"firstname":"agnes","lastname":"xavier"},"age":22,"gender":"female","department":"mca","mark":88,"grade":"A","contact":{"address":"sindhu bhavanam","place":"kavanad","city":"kollam","pincode":682544,"phone no":962344782}})
db.studlist.insert({"name":{"firstname":"ancy","lastname":"antony"},"age":22,"gender":"female","department":"mca","mark":91,"grade":"A+","contact":{"address":"antony villa","place":"aluva","city":"eranakulam","pincode":482544,"phone no":762344782}})
db.studlist.find()
// Display name (both fname and lname) and mark of all female students in MCA department. 
db.studlist.find({"gender":"female","department":"mca"},{"name":1,"mark":1})

output
{ "_id" : ObjectId("628de8738368d8e02dedc907"), "name" : { "firstname" : "sona", "lastname" : "morris" }, "mark" : 90 }
{ "_id" : ObjectId("628dec728368d8e02dedc90b"), "name" : { "firstname" : "anju", "lastname" : "KC" }, "mark" : 82 }
{ "_id" : ObjectId("628dee968368d8e02dedc90f"), "name" : { "firstname" : "agnes", "lastname" : "xavier" }, "mark" : 88 }
{ "_id" : ObjectId("628deffb8368d8e02dedc910"), "name" : { "firstname" : "ancy", "lastname" : "antony" }, "mark" : 91 }

//Display the details of student who secured highest mark in the course MCA
db.studlist.find({"department":"mca"}).sort({"mark":-1}).limit(1)
db.studlist.find({"department":"mca"}).sort({"mark":-1}).limit(1).pretty()

output
{ "_id" : ObjectId("628deaa38368d8e02dedc90a"), "name" : { "firstname" : "arun", "lastname" : "uday" }, "age" : 23, "gender" : "male", "department" : "mca", "mark" : 91, "grade" : "A+", "contact" : { "address" : "deepam kottapuram", "place" : "paravoor", "city" : "kollamr", "pincode" : 691582, "phone no" : 9948585645 } }

{
        "_id" : ObjectId("628deaa38368d8e02dedc90a"),
        "name" : {
                "firstname" : "arun",
                "lastname" : "uday"
        },
        "age" : 23,
        "gender" : "male",
        "department" : "mca",
        "mark" : 91,
        "grade" : "A+",
        "contact" : {
                "address" : "deepam kottapuram",
                "place" : "paravoor",
                "city" : "kollamr",
                "pincode" : 691582,
                "phone no" : 9948585645
        }
}

// Display all male students who secured A+ grade. 
db.studlist.find({"gender":"male","grade":"A+"}).pretty()

output
{
        "_id" : ObjectId("628de93b8368d8e02dedc908"),
        "name" : {
                "firstname" : "tony",
                "lastname" : "morris"
        },
        "age" : 20,
        "gender" : "male",
        "department" : "mechanical",
        "mark" : 95,
        "grade" : "A+",
        "contact" : {
                "address" : "edakunnathu veedu",
                "place" : "neendakara",
                "city" : "kollam",
                "pincode" : 691582,
                "phone no" : 9633331306
        }
}
{
        "_id" : ObjectId("628deaa38368d8e02dedc90a"),
        "name" : {
                "firstname" : "arun",
                "lastname" : "uday"
        },
        "age" : 23,
        "gender" : "male",
        "department" : "mca",
        "mark" : 91,
        "grade" : "A+",
        "contact" : {
                "address" : "deepam kottapuram",
                "place" : "paravoor",
                "city" : "kollamr",
                "pincode" : 691582,
                "phone no" : 9948585645
        }
}
{
        "_id" : ObjectId("628decf48368d8e02dedc90c"),
        "name" : {
                "firstname" : "albert",
                "lastname" : "john"
        },
        "age" : 24,
        "gender" : "male",
        "department" : "mechanical",
        "mark" : 96,
        "grade" : "A+",
        "contact" : {
                "address" : "sree nivas",
                "place" : "kazhakuttam",
                "city" : "trivandrum",
                "pincode" : 689544,
                "phone no" : 9956349823
        }
}

// Display the names of the top three students in Mechanical department. 
db.studlist.find({"department":"mechanical"},{"name":1,"mark":1}).sort({"mark":-1}).limit(3).pretty()

output
{
        "_id" : ObjectId("628decf48368d8e02dedc90c"),
        "name" : {
                "firstname" : "albert",
                "lastname" : "john"
        },
        "mark" : 96
}
{
        "_id" : ObjectId("628de93b8368d8e02dedc908"),
        "name" : {
                "firstname" : "tony",
                "lastname" : "morris"
        },
        "mark" : 95
}
{
        "_id" : ObjectId("628dea0b8368d8e02dedc909"),
        "name" : {
                "firstname" : "anusree",
                "lastname" : "TK"
        },
        "mark" : 93
}

//Display the details of female students [fname,lname,grade,mark,contact] who achieved a mark more than 90. 
db.studlist.find({"gender":"female","mark":{$gt:90}}).pretty()

output
{
        "_id" : ObjectId("628dea0b8368d8e02dedc909"),
        "name" : {
                "firstname" : "anusree",
                "lastname" : "TK"
        },
        "age" : 20,
        "gender" : "female",
        "department" : "mechanical",
        "mark" : 93,
        "grade" : "A+",
        "contact" : {
                "address" : "madamannil",
                "place" : "thalassery",
                "city" : "kannur",
                "pincode" : 68234,
                "phone no" : 9895184618
        }
}
{
        "_id" : ObjectId("628deffb8368d8e02dedc910"),
        "name" : {
                "firstname" : "ancy",
                "lastname" : "antony"
        },
        "age" : 22,
        "gender" : "female",
        "department" : "mca",
        "mark" : 91,
        "grade" : "A+",
        "contact" : {
                "address" : "antony villa",
                "place" : "aluva",
                "city" : "eranakulam",
                "pincode" : 482544,
                "phone no" : 762344782
        }
}

// Display the details of students who secured mark, more than 80 but less than 90. 
db.studlist.find({"mark":{$gt:80,$lt:90}}).pretty()

output
{
        "_id" : ObjectId("628dec728368d8e02dedc90b"),
        "name" : {
                "firstname" : "anju",
                "lastname" : "KC"
        },
        "age" : 30,
        "gender" : "female",
        "department" : "mca",
        "mark" : 82,
        "grade" : "B+",
        "contact" : {
                "address" : "sreenilayam",
                "place" : "kallada",
                "city" : "trivandrum",
                "pincode" : 691500,
                "phone no" : 9956349845
        }
}
{
        "_id" : ObjectId("628dee1a8368d8e02dedc90e"),
        "name" : {
                "firstname" : "varun",
                "lastname" : "shegar"
        },
        "age" : 23,
        "gender" : "male",
        "department" : "mca",
        "mark" : 86,
        "grade" : "A",
        "contact" : {
                "address" : "daisy cottage",
                "place" : "eravipuram",
                "city" : "kollam",
                "pincode" : 682544,
                "phone no" : 9623456782
        }
}
{
        "_id" : ObjectId("628dee968368d8e02dedc90f"),
        "name" : {
                "firstname" : "agnes",
                "lastname" : "xavier"
        },
        "age" : 22,
        "gender" : "female",
        "department" : "mca",
        "mark" : 88,
        "grade" : "A",
        "contact" : {
                "address" : "sindhu bhavanam",
                "place" : "kavanad",
                "city" : "kollam",
                "pincode" : 682544,
                "phone no" : 962344782
        }
}

//Display the details of students whose name starts with ‘V’ 

