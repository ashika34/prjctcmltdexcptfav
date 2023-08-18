import 'package:careerpoint2/firstscreen/firstscreen.dart';
import 'package:flutter/material.dart';

class SearchJobs extends StatefulWidget {
  const SearchJobs({super.key});

  @override
  State<SearchJobs> createState() => _SearchJobsState();
}
class _SearchJobsState extends State<SearchJobs> {
  TextEditingController jobtitle = TextEditingController();
  TextEditingController location = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Search Jobs',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: jobtitle,
                decoration: InputDecoration(
                    labelText: 'Jobtitle',
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextFormField(
                controller: location,
                decoration: InputDecoration(
                  labelText: 'Location',
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 55,
              child: Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 3,left: 3),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FirstScreen(),
                                ));
                          },
                          child: Text('Search Jobs'),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
height: 40,
            ),
            Container(
              color: Colors.grey,
              height: 3,
              width: 1000,
            ),
          ],
        ),
      ),
    );
  }
}