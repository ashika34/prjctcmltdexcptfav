import 'package:careerpoint2/firstscreen/view/first_page.dart';
import 'package:flutter/material.dart';

class Employers extends StatefulWidget {
  const Employers({Key? key}) : super(key: key);

  @override
  _EmployersState createState() => _EmployersState();
}
class _EmployersState extends State<Employers> {
  TextEditingController jobtitle = TextEditingController();
  TextEditingController qualification = TextEditingController();
  TextEditingController jobtype = TextEditingController();
  TextEditingController joblocation = TextEditingController();
  TextEditingController monthlysalary = TextEditingController();
  TextEditingController hiringprocess = TextEditingController();
  TextEditingController jobdescription = TextEditingController();
  List<String> jobTypes = ['Any', 'Full time', 'Part time','internship'];
  String? _selectedJobType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Post your Job'),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/careerpoint.png',
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Add Job Basics',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 55,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: jobtitle,
                  decoration: InputDecoration(
                    labelText: 'Job Title',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: qualification,
                  decoration: InputDecoration(
                    labelText: 'Qualification',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                DropdownButtonFormField<String>(
                value: _selectedJobType,
                onChanged: (newValue) {
                  setState(() {
                    _selectedJobType = newValue;
                  });
                },
                items: jobTypes.map((type) {
                  return DropdownMenuItem<String>(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Job type',
                  border: OutlineInputBorder(
                    
                  ),
                ),
              ),
                SizedBox(
                  height: 55,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: joblocation,
                  decoration: InputDecoration(
                    labelText: 'Job Location',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: monthlysalary,
                  decoration: InputDecoration(
                    labelText: 'Monthly Salary',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: hiringprocess,
                  decoration: InputDecoration(
                    labelText: 'Hiring Process',
                    border: OutlineInputBorder(),
                    
                  
                    ),
                  ),
                SizedBox(
                  height: 55,
                ),
                TextFormField(
                  maxLines: 5,
                  keyboardType: TextInputType.text,
                  controller: jobdescription,
                  decoration: InputDecoration(
                    labelText: 'Job Description',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FirstScreen(),
                        ),
                      );
                    },
                    child: Text('Post Job'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}