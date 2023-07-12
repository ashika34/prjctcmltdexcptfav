
import 'package:careerpoint2/jobdetails/jobdetails.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Senior Flutter Developer',
            
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Text('4.5'),
                Icon(Icons.star),
                Text(
                  'Camerinfolks Pvt Ltd ',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            
            Container(
         child: Row(
           children: [
            Icon(
        Icons.money,
        size: 20,
        color: Colors.black,
      ),
SizedBox(width: 10),
             Text('25000-35000',style: TextStyle(fontWeight: FontWeight.bold)),
           ],
         ), 

  width: 200,
  height: 20,
  color: Colors.grey,
  
  
),

SizedBox(
  height: 10,
),



        Container(
    child: Row(
      children: [
        Icon(
        Icons.time_to_leave_outlined,
        size: 20,
        color: Colors.black,
      ),
SizedBox(width: 10),
        Text('Full time',style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    ), 
    width: 200,
    height: 20,
    color: Colors.grey,
     ),
  
SizedBox(
  height: 10,
),


Container(
         child: Row(
           children: [
            Icon(
        Icons.location_city,
        size: 20,
        color: Colors.black,
      ),
SizedBox(width: 10),
             Text('Bangalore',style: TextStyle(fontWeight: FontWeight.bold)),
           ],
         ), 

  width: 200,
  height: 20,
  color: Colors.grey,
  
  
),
 SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => JobDetail(),));
                  },
                  child: Column(
                    children: [
                      Text(
                        'Apply',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
