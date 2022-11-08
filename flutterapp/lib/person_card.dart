import 'package:flutter/material.dart';

class personCard extends StatefulWidget {
  final imgsrc, name, jobs, rating;
  const personCard(
      {super.key,
      required this.imgsrc,
      required this.jobs,
      required this.rating,
      required this.name});

  @override
  State<personCard> createState() => _personCardState();
}

class _personCardState extends State<personCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
          width: 1,
        ),
      ),
      color: Color.fromARGB(255, 240, 236, 236),
      elevation: 5,
      child: Container(
        // color: Color.fromARGB(255, 238, 238, 241),
        child: Row(
          children: [
            // left profile image
            ClipRRect(
              borderRadius: BorderRadius.circular(50), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(40), // Image radius
                child:
                    Image.network(widget.imgsrc.toString(), fit: BoxFit.cover),
              ),
            ),

            // right container
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.red,
                          fontWeight: FontWeight.w500),
                    ),
                    // Expanded(
                    //   child: Text(
                    //     "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    //     style: TextStyle(
                    //         fontSize: 15.0,
                    //         color: Colors.blueAccent,
                    //         fontWeight: FontWeight.w500),
                    //   ),
                    // ),
                    Container(
                      width: double.maxFinite,
                      // color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Jobs: ${widget.jobs}",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Rating: ⭐${widget.rating}",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
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
