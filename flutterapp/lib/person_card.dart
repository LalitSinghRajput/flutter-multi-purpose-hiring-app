import 'package:flutter/material.dart';
import 'package:flutterapp/person_service.dart';

class personCard extends StatefulWidget {
  final imgsrc, name, jobs, rating, id;
  const personCard(
      {super.key,
      required this.imgsrc,
      required this.jobs,
      required this.rating,
      required this.name,
      required this.id});

  @override
  State<personCard> createState() => _personCardState();
}

class _personCardState extends State<personCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: BorderSide(
            color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
            width: 1,
          ),
        ),
        color: Color.fromARGB(255, 255, 255, 255),
        elevation: 5,
        child: Container(
          // color: Color.fromARGB(255, 238, 238, 241),
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // left profile image
              ClipRRect(
                borderRadius: BorderRadius.circular(50), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40), // Image radius
                  child: Image.network(widget.imgsrc.toString(),
                      fit: BoxFit.cover),
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
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => personService(
                    id: widget.id,
                  )),
        );
      },
    );
  }
}
