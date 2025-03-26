import 'package:flutter/material.dart';
import 'Trip.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> items = [
      {"image": "assets/img6.jpg", "text": "Northern Mountain"},
      {"image": "assets/img5.jpg", "text": "Cityscape"},
      {"image": "assets/img1.jpg", "text": "Sunny Beach"},
      {"image": "assets/img2.jpg", "text": "Forest Trail"},
      {"image": "assets/img3.jpg", "text": "Snowy Peaks"},
      {"image": "assets/img4.jpg", "text": "Desert Adventure"},
    ];

    return Scaffold(
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 25,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,

                ),
              ),
              SizedBox(height: 2,),
              Container(
                width: 25,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,

                ),
              ),
              SizedBox(height: 2,),
              Container(
                width: 20,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,

                ),
              ),

            ],
          ),
          Text("Discover" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), // Rounded corners
              image: DecorationImage(
                image: AssetImage('assets/logo.jpg'),
                fit: BoxFit.cover, // Ensures the image fills the container
              ),
            ),
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Text("Popular" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 17),),
                      SizedBox(width: 15,),
                      Text("Featured" , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 15,),
                      Text("Most Visited" , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 15,),
                      Text("Europe" , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 15,),
                      Text("Asia" , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 15,),
                      Text("Africa" , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 15,),
                      Text("North America" , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 15,),
                      Text("South America" , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 15,),
                      Text("Australia" , style: TextStyle(fontSize: 17),),
                      SizedBox(width: 15,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: items.map((item) {
                    return TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Trip(
                              image: item["image"]!,
                              text: item["text"]!,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            Container(
                              width: 320,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage(item["image"]!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 280,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          item["text"]!,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                          size: 22,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow, size: 22),
                                      Icon(Icons.star, color: Colors.yellow, size: 22),
                                      Icon(Icons.star, color: Colors.yellow, size: 22),
                                      Icon(Icons.star, color: Colors.yellow, size: 22),
                                      Icon(Icons.star, color: Colors.yellow, size: 22),
                                      Text("4.5", style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 27,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  SizedBox(width: 5,),
                  Container(
                    width: 7,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  SizedBox(width: 5,),
                ],
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recommended" ,style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                    Text("View All"),
                  ],
                ),
              ),
              SizedBox(height: 10,),
          SingleChildScrollView(
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.9,
              ),
              itemCount: items.length,
              itemBuilder: (context, i) {
                return TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Trip(
                          image: items[i]["image"]!,
                          text: items[i]["text"]!,
                      )
                      ),
                    );
                  },
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(items[i]["image"]!),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                Positioned(
                bottom: 10,
                left: 5,
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(
                width: 160,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(
                items[i]["text"]!,
                style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                ),
                ),
                Icon(
                Icons.favorite,
                color: Colors.red,
                size: 18,
                ),
                ],
                ),
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Icon(Icons.star, color: Colors.yellow, size: 15),
                Text("4.5", style: TextStyle(color: Colors.white)),
                ],
                ),
                ],
                ),
                ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  Container(
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
              ],
            ),
          ),
      ),

    );
  }
}
