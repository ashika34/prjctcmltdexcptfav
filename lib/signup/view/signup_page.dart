
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController experience= TextEditingController();
  TextEditingController qualification= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
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
                SizedBox(height: 40),
                Text('Apply to jobs from Indias No.1 Job Site',style: TextStyle(fontWeight: FontWeight.bold,fontSize:17),),
                SizedBox(
                  height: 55,
                ),
                TextFormField(
                  controller: name,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.person, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.email, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.password, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: phoneNumber,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: 'Mobile phone',
                    border: OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.phone, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: location,
                  keyboardType:TextInputType.streetAddress,
                  decoration: InputDecoration(
                    labelText: 'Location',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.pin_drop,color: Colors.black),
                  ),
                  ),
                  SizedBox(
                    height: 25
                  ),
                  TextFormField(
                  controller: experience,
                  keyboardType:TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: 'Experience',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.work_history,color: Colors.black),
                  ),
                  ),
                  SizedBox(
                    height: 25
                  ),
                  TextFormField(
                  controller: qualification,
                  keyboardType:TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Qualification',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.school,color: Colors.black),
                  ),
                  ),
                  SizedBox(
                    height: 25
                  ),
                  ElevatedButton(onPressed: () {
                    
                  }, child: Text('Upload Resume'),
                  style:ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                  ),
                  SizedBox(
                  height: 20,

                  ),

                  Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                    child: const Text('Sign Up'),
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
