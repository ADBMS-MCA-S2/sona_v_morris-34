use candidate

> db.createCollection("details")

> db.details.insert({"name":"don","age":21,"gender":"male","amt":45000})

> db.details.insert({"name":"maya","age":25,"gender":"female","amt":35000})

> db.details.insert({"name":"sona","age":22,"gender":"female","amt":50000})

> db.details.insert({"name":"anos","age":27,"gender":"male","amt":47000})

> db.details.insert({"name":"arun","age":23,"gender":"male","amt":7000})

> db.details.insert({"name":"anu","age":20,"gender":"female","amt":37000})

> db.details.insert({"name":"tony","age":20,"gender":"male","amt":70000})

> db.details.insert({"name":"manoj","age":26,"gender":"male","amt":60000})

> db.details.insert({"name":"saniya","age":26,"gender":"female","amt":57000})

> db.details.insert({"name":"sanal","age":28,"gender":"male","amt":63000})

//customers who are either male or younger than 25
 db.details.find({$or:[{"gender":"male"},{"age":{$lt:25}}]})

//calculate total purchase amt for  males and females in the collection. use aggregate method instead of find method
 db.details.aggregate([{$group:{_id:"$gender","total amt":{$sum:"$amt"}}}])

//select customers who are older than 25 and calculate the average purchase amt for males and females(pipelining)
db.details.aggregate([{$match:{"age":{$gt:25}}},{$group:{_id:"$gender","total amt":{$avg:"$amt"}}}])
