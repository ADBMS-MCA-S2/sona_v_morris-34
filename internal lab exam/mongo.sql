use emp
switched to db emp
> db.createCollection("emply");
{ "ok" : 1 }
> db.emply.insert({"emp_id":"101","name":"sona","salary":"40000","role":"manager"});
WriteResult({ "nInserted" : 1 })
> db.emply.insert({"emp_id":"102","name":"anu","salary":"25000","role":"hr"});
WriteResult({ "nInserted" : 1 })
> db.emply.insert({"emp_id":"103","name":"sneha","salary":"30000","role":"ob"});
WriteResult({ "nInserted" : 1 })
> db.emply.insert({"emp_id":"104","name":"remya","salary":"20000","role":"mob"});
WriteResult({ "nInserted" : 1 })
> db.emply.insert({"emp_id":"105","name":"manasa","salary":"23000","role":"mob"});
WriteResult({ "nInserted" : 1 })
> db.emply.insert({"emp_id":"106","name":"manak","salary":"22000","role":"sm"});
WriteResult({ "nInserted" : 1 })
> db.emply.insert({"emp_id":"107","name":"msd","salary":"18000","role":"hr"});
WriteResult({ "nInserted" : 1 })
> db.emply.insert({"emp_id":"108","name":"osak","salary":"24000","role":"rd"});
WriteResult({ "nInserted" : 1 })
> db.emply.find().pretty()
{
        "_id" : ObjectId("62a851e7a445ba55060888ea"),
        "emp_id" : "101",
        "name" : "sona",
        "salary" : "40000",
        "role" : "manager"
}
{
        "_id" : ObjectId("62a85201a445ba55060888eb"),
        "emp_id" : "102",
        "name" : "anu",
        "salary" : "25000",
        "role" : "hr"
}
{
        "_id" : ObjectId("62a85247a445ba55060888ec"),
        "emp_id" : "103",
        "name" : "sneha",
        "salary" : "30000",
        "role" : "ob"
}
{
        "_id" : ObjectId("62a85262a445ba55060888ed"),
        "emp_id" : "104",
        "name" : "remya",
        "salary" : "20000",
        "role" : "mob"
}
{
        "_id" : ObjectId("62a85278a445ba55060888ee"),
        "emp_id" : "105",
        "name" : "manasa",
        "salary" : "23000",
        "role" : "mob"
}
{
        "_id" : ObjectId("62a8528ea445ba55060888ef"),
        "emp_id" : "106",
        "name" : "manak",
        "salary" : "22000",
        "role" : "sm"
}
{
        "_id" : ObjectId("62a852a9a445ba55060888f0"),
        "emp_id" : "107",
        "name" : "msd",
        "salary" : "18000",
        "role" : "hr"
}
{
        "_id" : ObjectId("62a852c9a445ba55060888f1"),
        "emp_id" : "108",
        "name" : "osak",
        "salary" : "24000",
        "role" : "rd"
}
> db.emply.find({"name":{$regex:"^s"}}).pretty()
{
        "_id" : ObjectId("62a851e7a445ba55060888ea"),
        "emp_id" : "101",
        "name" : "sona",
        "salary" : "40000",
        "role" : "manager"
}
{
        "_id" : ObjectId("62a85247a445ba55060888ec"),
        "emp_id" : "103",
        "name" : "sneha",
        "salary" : "30000",
        "role" : "ob"
}
> db.emply.find({"name":{$regex:"s"}}).pretty()
{
        "_id" : ObjectId("62a851e7a445ba55060888ea"),
        "emp_id" : "101",
        "name" : "sona",
        "salary" : "40000",
        "role" : "manager"
}
{
        "_id" : ObjectId("62a85247a445ba55060888ec"),
        "emp_id" : "103",
        "name" : "sneha",
        "salary" : "30000",
        "role" : "ob"
}
{
        "_id" : ObjectId("62a85278a445ba55060888ee"),
        "emp_id" : "105",
        "name" : "manasa",
        "salary" : "23000",
        "role" : "mob"
}
{
        "_id" : ObjectId("62a852a9a445ba55060888f0"),
        "emp_id" : "107",
        "name" : "msd",
        "salary" : "18000",
        "role" : "hr"
}
{
        "_id" : ObjectId("62a852c9a445ba55060888f1"),
        "emp_id" : "108",
        "name" : "osak",
        "salary" : "24000",
        "role" : "rd"
}
> db.emply.find({"name":{$regex:"k$"}}).pretty()
{
        "_id" : ObjectId("62a8528ea445ba55060888ef"),
        "emp_id" : "106",
        "name" : "manak",
        "salary" : "22000",
        "role" : "sm"
}
{
        "_id" : ObjectId("62a852c9a445ba55060888f1"),
        "emp_id" : "108",
        "name" : "osak",
        "salary" : "24000",
        "role" : "rd"
}
