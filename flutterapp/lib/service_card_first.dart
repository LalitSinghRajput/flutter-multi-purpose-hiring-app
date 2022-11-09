import 'package:flutter/material.dart';

class serviceCardFirst extends StatefulWidget {
  const serviceCardFirst({super.key});

  @override
  State<serviceCardFirst> createState() => _serviceCardFirstState();
}

class _serviceCardFirstState extends State<serviceCardFirst> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(
          color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
          width: 1,
        ),
      ),
      elevation: 2.5,
      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // left service image
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(50), // Image radius
                child: Image.network(
                    "https://media.istockphoto.com/id/1165561132/photo/electrician-working-at-electric-panel.jpg?s=612x612&w=0&k=20&c=3_WYnt8wYvyIAxCXJdbvt50llvAwmU_M_1gw4cwUr9o=",
                    fit: BoxFit.cover),
              ),
            ),

            Padding(padding: EdgeInsets.all(5.0)),

            // service right part
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Service 1",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w500),
                          // textAlign: TextAlign.end,
                        ),
                      ),
                    ),

                    // short - Description
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w400),
                          // textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
