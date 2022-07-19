 use exam;

> db.createCollection("student");

> db.student.insert({"_id":1,"name":"anjali","place":"kollam","phone":8582639562,"vaccination_status":"both vaccinated","RTPCR":"negative","lab_mark":{"internal":30,"external":45},"department":"mca"});

> db.student.insert({"_id":2,"name":"anuradha","place":"varkala","phone":9992639562,"vaccination_status":"both vaccinated","RTPCR":"negative","lab_mark":{"internal":40,"external":48},"department":"civil"});

> db.student.insert({"_id":3,"name":"bismiya","place":"kollam","phone":9446639562,"vaccination_status":"not vaccinated","RTPCR":"positive","lab_mark":{"internal":50,"external":39},"department":"mca"});

> db.student.insert({"_id":4,"name":"vimal","place":"ernakulam","phone":8582639568,"vaccination_status":"first dose only","RTPCR":"positive","lab_mark":{"internal":40,"external":42},"department":"civil"});

> db.student.insert({"_id":5,"name":"vivek","place":"kollam","phone":8582639777,"vaccination_status":"both vaccinated","RTPCR":"negative","lab_mark":{"internal":50,"external":50},"department":"mca"});

> db.student.find({"vaccination_status":"not vaccinated"},{"name":1}).count()

> db.student.find({"department":"mca"},{"_id":0,"name":1,"phone":1,"lab_mark.external":1}).sort({"lab_mark.external":-1})

> db.student.updateOne({"_id":4},{$set:{"vaccination_status":"both vaccinated"}})
