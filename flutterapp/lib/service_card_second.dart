import 'package:flutter/material.dart';

class serviceCardSecond extends StatefulWidget {
  final description, imgsrc, title;
  const serviceCardSecond(
      {super.key,
      required this.description,
      required this.imgsrc,
      required this.title});

  @override
  State<serviceCardSecond> createState() => _serviceCardSecondState();
}

class _serviceCardSecondState extends State<serviceCardSecond> {
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
                          widget.title,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                          // textAlign: TextAlign.end,
                        ),
                      ),
                    ),

                    // short - Description
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          widget.description,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w500),
                          // textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // left service image
            ClipRRect(
              borderRadius: BorderRadius.circular(20), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(50), // Image radius
                child: Image.network(widget.imgsrc, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
