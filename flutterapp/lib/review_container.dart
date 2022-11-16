import 'package:flutter/material.dart';

class ReviewContainer extends StatefulWidget {
  const ReviewContainer({super.key});

  @override
  State<ReviewContainer> createState() => _ReviewContainerState();
}

class _ReviewContainerState extends State<ReviewContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // left image
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25), // Image border
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(25),
                      child: Image.network(
                          "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=600",
                          fit: BoxFit.fill),
                    ),
                  ),

                  Padding(padding: EdgeInsets.all(10.0)),

                  // middle
                  Column(
                    children: [
                      Text(
                        'Rohan',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Excellent Teaching',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),

                  // right
                  Expanded(child: Text('⭐⭐⭐⭐'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
