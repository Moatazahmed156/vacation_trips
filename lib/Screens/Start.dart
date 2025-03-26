import 'package:flutter/material.dart';
import 'Home.dart';
class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 28,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), // Rounded corners
                image: DecorationImage(
                  image: AssetImage('assets/StartImg.jpg'),
                  fit: BoxFit.cover, // Ensures the image fills the container
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Winter" , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold , color: Color(0xdf303030)),),
                  Text("Vacation Trips" , style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold , color: Color(0xdf303030)),),
                  SizedBox(height: 20,),
                  Text("Enjoy your winter vacations with warmth"),
                  Text("and amazing sightseeing on the mountains."),
                  Text("Enjoy the best experience with us!"),
                  SizedBox(height: 25,),
                  Container(
                    width: 154,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff3f3879),
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Let's GO! " , style: TextStyle(fontSize: 18 ),),
                          Icon(Icons.arrow_right_alt , size: 30)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
