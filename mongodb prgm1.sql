//create a student database with fields srn,sname,degree,sem,cgpa
> use stud
> db.createCollection("student")
> db.student.insert({"srn":107,"sname":'anusree',"degree":'BCA',"sem":6,"cgpa":8.9})
> db.student.insert({"srn":108,"sname":'rahul',"degree":'BCA',"sem":5,"cgpa":8.0})
> db.student.insert({"srn":109,"sname":'agnes',"degree":'BSC',"sem":3,"cgpa":8.5})
> db.student.insert({"srn":102,"sname":'alen',"degree":'BCOM',"sem":4,"cgpa":7.3})
> db.student.insert({"srn":101,"sname":'aleena',"degree":'BA',"sem":4,"cgpa":7.5})
> db.student.insert({"srn":103,"sname":'mariya',"degree":'BA',"sem":1,"cgpa":6.5})
> db.student.insert({"srn":104,"sname":'tony',"degree":'BCA',"sem":1,"cgpa":6.7})
> db.student.insert({"srn":105,"sname":'tony',"degree":'BCA',"sem":2,"cgpa":6.9})

//display all document
> db.student.find()

//display all students in BCA
> db.student.find({"degree":'BCA'})

//display all students in ascending order
> db.student.find().sort({"sname":1})

//display first five students
> db.student.find().limit(5)

//display students 5,6,7
> db.student.find().skip(4).limit(3)

//list the degree of student rahul
> db.student.find({"sname":'rahul'},{"sname":1,"degree":1})

//display student details of 5,6,7 in descending order of cgpa


//display no: of students in bca
> db.student.count({"degree":'BCA'})

//display all the degrees without _id
> db.student.find({},{"degree":1,"_id":0})

//display all distinct degrees
> db.student.distinct("degree")

//display all the bca students with cgpa>6 &cgpa<7.5
> db.student.find({"degree":'BCA',"cgpa":{$gt:6,$lt:7.5}})

//display all students in bca and in 6th sem
> db.student.find({$and:[{"degree":'BCA'},{"sem":6}]})
