import 'package:flutter/material.dart';

class Trip extends StatelessWidget {
  final String image;
  final String text;

  Trip({Key? key, required this.image, required this.text}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ConstrainedBox(
                 constraints: BoxConstraints(
                   minWidth: MediaQuery.of(context).size.width,
                   minHeight: MediaQuery.of(context).size.height,
                 ),
                ),
                Container(
                  margin: EdgeInsets.all(6),
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); // Navigates back when pressed
                        },
                        child: Icon(Icons.arrow_back  ,size: 30, color: Colors.black,),
                      ),
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
                    ],
                  ),
                ),
                Positioned(
                  top: 400,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 900,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(text , style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined ,size: 15,),
                              Text("Tokyo, Japan")
                            ],
                          ),
                          SizedBox(height: 4,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Text("4.5", style: TextStyle(color: Colors.black)),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Container(
                                    alignment: Alignment.center,
                                  width: 20,
                                  height: 30,
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Color(0xff877cf7),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                    child: Text("+"),
                                  ),
                                    Text("5", style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.white),),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 20,
                                      height: 30,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Color(0xff877cf7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text("-" , style: TextStyle(fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                              Icon(Icons.watch_later_outlined),
                              Text(" 5 Days" , style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          SizedBox(height: 20 ,),
                          Text("Description" , style: TextStyle(fontSize: 25),),
                          SizedBox(height: 10 ,),
                          Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis soluta ab optio sed repellendus molestias incidunt, ut, illum aperiam dolore unde aliquam, rem quos magnam perferendis esse accusantium amet harum!"),
                          SizedBox(height: 30 ,),
                          Row(
                            children: [
                              Text("\$400" ,style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Color(0xff3f3979)),),
                              Text("/Package" ,style: TextStyle(fontSize: 15 , color: Color(0xff3f3979)),),
                              SizedBox(width: 50,),
                              Container(
                                width: 150,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff3f3979),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Text("Book Now" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ]
        ),
      ),
    );
  }
}
