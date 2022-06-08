use colleges
  db.createCollection("clg")
  db.clg.insert({"admission no":"2146","name":"sona","marks":[{"maths":"90","physics":"82","chemistry":"86"}]})
  
  single indexes
  
  db.clg.getIndexes()
  
  //output
  
  [ { "v" : 2, "key" : { "_id" : 1 }, "name" : "_id_" } ]
  
  db.clg.createIndex({"admission no":1})
  
  //output
  
  {
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}

db.clg.getIndexes()

//output

[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "admission no" : 1
                },
                "name" : "admission no_1"
        }
]

db.clg.dropIndex({"admission no":1})
{ "nIndexesWas" : 2, "ok" : 1 }

compound indexes


 db.clg.createIndex({"admission no":1},{"name":"sona"})
 
 {
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}


multikey indexes

db.clg.createIndex({"mark.maths":1})

db.clg.getIndexes()

[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "admission no" : 1
                },
                "name" : "sona"
        },
        {
                "v" : 2,
                "key" : {
                        "mark.maths" : 1
                },
                "name" : "mark.maths_1"
        }
]



 text indexes
 
 db.createCollection("comment")
 db.comment.insert({"name":"sona","post":"welcome to ooty"})
  db.comment.insert({"name":"morris","post":"nice to meet you"})
  db.comment.insert({"name":"thomas","post":"welcome"})
  db.comment.insert({"name":"mathew","post":"everyone"})
  db.comment.createIndex({"post":"text"})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
> db.comment.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "_fts" : "text",
                        "_ftsx" : 1
                },
                "name" : "post_text",
                "weights" : {
                        "post" : 1
                },
                "default_language" : "english",
                "language_override" : "language",
                "textIndexVersion" : 3
        }
]
db.comment.find({$text:{$search:"\"welcome\""}})
{ "_id" : ObjectId("62a072e6acce5a97a5d851eb"), "name" : "thomas", "post" : "welcome" }
{ "_id" : ObjectId("62a0728cacce5a97a5d851e9"), "name" : "sona", "post" : "welcome to ooty" }

 
