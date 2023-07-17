
import 'package:careerpoint2/employers/employers.dart';
import 'package:flutter/material.dart';

class EmpAccnt extends StatefulWidget {
  const EmpAccnt({super.key});
  @override
  State<EmpAccnt> createState() => _EmpAccntState();
}
class _EmpAccntState extends State<EmpAccnt> {
  TextEditingController companyname = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  List<String> jobTypes = ['Any', 'Full time', 'Part time','internship']; 
  String? _selectedJobType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: GestureDetector(
          onTap:() => Navigator.pop(context),
          child: Icon(Icons.arrow_back,color: Colors.white,),
          
        ),
      ),
       body: 
       SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Create an Employer Account',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(
            height: 18,
            ),
            Image.asset(
                  'assets/images/careerpoint.png',
                  height: 150,
                  width: 150,
                ),
            
                 SizedBox(
            height: 18,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('You have not posted a job before,so you will need to create an employer account.',style: TextStyle(fontSize: 18),),
            ),
            SizedBox(
            height: 18,
            ),
            TextFormField(
              keyboardType:TextInputType.name,
              controller: companyname,
              decoration: InputDecoration(
                labelText: 'Your Company name',
                border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.home,color: Colors.black,),
             ), ),
             SizedBox(
            height: 35,
             ),
             TextFormField(
              keyboardType: TextInputType.number,
              controller: name,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
                 prefixIcon: Icon(Icons.person,color: Colors.black,),
              ),
               ),
              SizedBox(
            height: 35,
             ),
             TextFormField(
             keyboardType: TextInputType.emailAddress,
             decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
               prefixIcon: Icon(Icons.email,color: Colors.black,),
             ),
             ),
              SizedBox(
            height: 35,
             ),
             TextFormField(
             keyboardType: TextInputType.visiblePassword,
             decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
               prefixIcon: Icon(Icons.password,color: Colors.black,),
              ),),
          SizedBox(
          height: 35,
          ),
TextFormField(
keyboardType: TextInputType.phone,
controller: phone,
decoration: InputDecoration(
  labelText: 'Mobile phone',
  border: OutlineInputBorder(),
   prefixIcon: Icon(Icons.phone,color: Colors.black,),
),
),
SizedBox(
  height: 35,
),
ElevatedButton(onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) => Employers(),));
}, child:Text('Create Account'),
style: ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
  ),
),
),
],),) );
  }
} 