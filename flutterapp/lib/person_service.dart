import 'package:flutter/material.dart';
import 'package:flutterapp/date_time_screen.dart';
import 'package:flutterapp/review_container.dart';
import 'package:flutterapp/service_card_first.dart';
import 'package:flutterapp/service_card_second.dart';

class personService extends StatefulWidget {
  const personService({super.key});

  @override
  State<personService> createState() => _personServiceState();
}

class _personServiceState extends State<personService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // backgroundColor: Colors.blue,
      ),
      backgroundColor: Color.fromARGB(255, 240, 240, 237),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25), // Image border
                child: SizedBox.fromSize(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuJLbOcZhJx3rAYH5u-8ni1zCn2dKQ8uv4Uw&usqp=CAU",
                      fit: BoxFit.fill),
                ),
              ),

              Padding(padding: EdgeInsets.all(15.0)),

              // name
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "Rohan Sharma",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
              // work
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Text(
                    "Carpenter",
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                    // textAlign: TextAlign.end,
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.all(5.0)),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                    width: 1,
                  ),
                ),
                elevation: 2.5,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // jobs
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Jobs",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "450",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Rate
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Rate",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Rs.1500/hr",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // jobs
                      Expanded(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Rating",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "⭐4.5",
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.all(5.0)),

              // Description
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                    width: 1,
                  ),
                ),
                elevation: 2.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent ornare diam id varius dignissim. Quisque luctus facilisis est vel suscipit. Mauris in luctus ex. Mauris a purus a purus feugiat commodo id id augue. Ut ex sapien, pharetra vel augue sit amet, convallis pretium arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc ac elementum mauris. Ut nec magna augue. Sed eleifend feugiat elit, ut tempus mauris ultrices quis. Duis et nisl leo.",
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w400),
                        // textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(padding: EdgeInsets.all(5.0)),

              // Padding(padding: EdgeInsets.all(5.0)),

              // email
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                    width: 1,
                  ),
                ),
                elevation: 2.5,
                color: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(padding: EdgeInsets.all(5.0)),
                      Text(
                        'rohan34@gmail.com',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Contact no
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(
                    color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                    width: 1,
                  ),
                ),
                elevation: 2.5,
                color: Colors.blue,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        'Contact',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(padding: EdgeInsets.all(5.0)),
                      Text(
                        '9545781245',
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              // Services Providing Container
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // 1st card
                    serviceCardFirst(),
                    serviceCardSecond(),
                    serviceCardFirst(),
                    serviceCardSecond(),
                    serviceCardFirst(),
                    serviceCardSecond(),
                  ],
                ),
              ),

              // Review container
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Reviews",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                      width: 0.2,
                    ),
                  ),
                  color: Color.fromARGB(255, 237, 234, 234),
                  elevation: 2.5,
                  child: Column(
                    children: [
                      ReviewContainer(),
                      ReviewContainer(),
                      ReviewContainer(),
                      ReviewContainer(),
                    ],
                  )),

              // book button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DateTimeScreen()),
                  );
                },
                child: Text('Book Now'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
