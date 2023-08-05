import 'package:careerpoint2/empaccount/empaccnt.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class EmployerJobDetail extends StatefulWidget {
  const EmployerJobDetail({super.key});

  @override
  State<EmployerJobDetail> createState() => _EmployerJobDetailState();
}

class _EmployerJobDetailState extends State<EmployerJobDetail> {
 final FirebaseFirestore _firestore= FirebaseFirestore.instance;
  final FirebaseAuth _auth=FirebaseAuth.instance;
  late CollectionReference _jobRef;
  late FirebaseStorage _storage;
  @override
  void initState() {
    super.initState();
    _jobRef=_firestore.collection('post job');
    _storage=FirebaseStorage.instance;
     }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Please Review'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/careerpoint.png',
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(),
              child: ListTile(
                leading: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context)
                {
return AlertDialog(
title: Text('Edit'),
);
                } 
              );
            },
            icon: Icon(Icons.edit),
          ),
                title: Text('Job Title'),
                // subtitle: Text('Software Engineer'),
                trailing: 
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child:Icon(Icons.edit)
                ),
                ),
            ),
            ListTile(
              leading: Icon(Icons.cast_for_education_outlined),
              title: Text('Qualification'),
              // subtitle: Text('This is the qualification.'),
              trailing: GestureDetector(
                onTap:() => Navigator.pop(context),
              child:Icon(Icons.edit),
              )
            ),
            ListTile(
            leading: Icon(Icons.work),
            title: Text('Job Type'),
            // subtitle: Text('this is the jobtype'),
            trailing: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.edit),
            ),
            ),
            ListTile(
              leading: Icon(Icons.location_city),
              title: Text('Job Location'),
              // subtitle: Text('This is the loc'),
              trailing: GestureDetector(
                onTap: () => Navigator.pop(context),
                child:Icon(Icons.edit),
              ),
            ),
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Monthly Salary'),
              // subtitle: Text('this is the monthly salary'),
              trailing: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.edit),
              ),
            ),
            ListTile(
              leading: Icon(Icons.radar_outlined),
              title: Text('Hiring Process'),
              // subtitle: Text('this is the hiring process'),
              trailing: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.edit),
              ),
            ),
            ListTile(
              leading: Icon(Icons.data_array_outlined),
              title: Text('Job description'),
              // subtitle: Text('this is jd'),
              trailing: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.edit),
              ),
            ),
            Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(onPressed: () {
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EmployerJobDetail(),));
                        
                      }, child: Text('confirm'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                      ),
                      ),
                       ),
                  ),
                   ],
        ),
      ),
    );
  }
}

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:todo/home/home.dart';

// class TaskTile extends StatelessWidget {
//   TaskTile({Key? key, required this.tasks}) : super(key: key);
//   final QueryDocumentSnapshot<Map<String, dynamic>> tasks;
//   final _todoRef = FirebaseFirestore.instance.collection("Task Collection");
//   final TextEditingController _taskController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ListTile(
//         leading: IconButton(
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                 //  final int index = 0;
//                 //   final task1 = tasks[index];
//                 //   _taskController.text=task1['task title'].toString();
//                 //   _descriptionController.text=task1['description'].toString();


//                   return AlertDialog(
//                     title: Text("Edit Task"),
//                     content: Column(
//                       children: [
//                         TextField(
//                           controller: _taskController,
//                           decoration: InputDecoration(
//                             hintText: "Task",
//                           ),
//                         ),
//                         TextField(
//                           controller: _descriptionController,
//                           decoration: InputDecoration(
//                             hintText: "Description",
//                           ),
//                         ),
//                         Row(
//                           children: [
//                             TextButton(
//                                 onPressed: () {
//                                   FirebaseFirestore.instance
//                                       .collection('Task Collection')
//                                       .doc(tasks.id)
//                                       .update({
//                                     "task title": _taskController.text,
//                                     "description": _descriptionController.text,
//                                   });
//                                   _taskController.clear();
//                                   _descriptionController.clear();
//                                   Navigator.push(context, MaterialPageRoute(builder: (context) => HomePg(),));
//                                 },
//                                 child: Text("Save")),


//                                 TextButton(onPressed: () {
//                                   Navigator.pop(context);
//                                 }, child: Text("Cancel"))
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               );
//             },
//             icon: Icon(Icons.edit)),
//         title: Text(tasks['task title'].toString()),
//         subtitle: Text(tasks['description'].toString()),
//         trailing: IconButton(
//             onPressed: () async {
//               final documentReference = _todoRef.doc(tasks.id);
//               await documentReference.delete();
//             },
//             icon: Icon(Icons.delete)),
//       ),
//     );
//   }
// }