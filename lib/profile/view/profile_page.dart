
import 'package:careerpoint2/desiredjob/desiredjob.dart';
import 'package:careerpoint2/education/education.dart';
import 'package:careerpoint2/empdetails/empdetail.dart';
import 'package:careerpoint2/firstscreen/firstscreen.dart';
import 'package:careerpoint2/personal/personal.dart';
import 'package:careerpoint2/worksum/worksum.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Careerpoint',
                style: TextStyle(fontSize: 23),
              ),
              Spacer(),
              Icon(Icons.search),
              SizedBox(width: 10),
              Icon(Icons.favorite),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Card(
                  elevation: 3,
                  child: Container(
                    width: double.infinity,
                    height: 85,
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Personal Details',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PersonalDetails(),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.edit),
                              ),
                            ],
                          ),
                          SizedBox(height: 11),
                          // Align(
                          //   alignment: Alignment.centerLeft,
                          //   child: Text(
                          //     'Email id:',
                          //     style: TextStyle(
                          //         fontWeight: FontWeight.bold, fontSize: 15),
                          //   ),
                          // ),
                          // SizedBox(height: 11),
                          
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 85,
                    padding: EdgeInsets.all(9.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Work Summary',
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => WorkSum(),
                                      ));
                                },
                                icon: Icon(Icons.edit))
                          ],
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 85,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(9.0),
                        ),
                        Text(
                          'Job Details',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => empDetails(),
                                  ));
                            },
                            icon: Icon(Icons.edit)),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 85,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(9.0),
                        ),
                        Text(
                          'Education',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Education(),
                                  ));
                            },
                            icon: Icon(Icons.edit))
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: double.infinity,
                    height: 85,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(9.0),
                        ),
                        Text(
                          'Desired Job',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DesiredJob(),
                                  ));
                            },
                            icon: Icon(Icons.edit))
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                  width: double.infinity,
                    height: 85,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.all(9.0)),
                        Text(
                          'Resume',
                          style:
                              TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                              Spacer(),
                              ElevatedButton(onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
                              }, 
                            child: Text('Add'),
                            style: ElevatedButton.styleFrom(
                                
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                
                              )
                               ),),
                        ],
                    ),
                    
                  ),
                  
                )
              ],
            ),
          ),
        ));
  }
}