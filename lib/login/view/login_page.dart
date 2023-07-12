
import 'package:careerpoint2/homepage/home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FormField =GlobalKey<FormState>();
  final emailcontroller =TextEditingController();
  final passordcontroller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Center(
            child: Text(
          'Hello Again',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            child: Form(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/careerpoint.png',
                height: 150,
                width: 150,
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Your Dream job is just a few clicks away',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
              SizedBox(
                height: 50,
              ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText:'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email,color: Colors.black,),

                  ),

                ),
                SizedBox(
                  height: 35,
                  ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText:'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.password,color: Colors.black,),
 ),
                ),
                SizedBox(
                height: 30,
                ),
        Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child:ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
        },
        child: Text('Login'),
        style:ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
 ),
        ),
        
      ),),
 ]
            ),
            ),
            )
            
      ),
    );
  }
}

