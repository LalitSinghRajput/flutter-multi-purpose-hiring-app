import 'package:flutter/material.dart';

class BookingCard extends StatefulWidget {
  final name, email, contact, address, imgsrc, bookingData;
  const BookingCard(
      {super.key,
      required this.name,
      required this.email,
      required this.contact,
      required this.address,
      this.imgsrc,
      required this.bookingData});

  @override
  State<BookingCard> createState() => _BookingCardState();
}

class _BookingCardState extends State<BookingCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
          width: 1,
        ),
      ),
      color: Color.fromARGB(255, 255, 255, 255),
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(50),
                child: Image.network(
                    // "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=600",
                    widget.imgsrc,
                    fit: BoxFit.fill),
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            // name and other details
            Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      // "Rohan Sharma",
                      widget.name,
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w500),
                      // textAlign: TextAlign.end,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0)),

                // email
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color:
                          Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
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
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Text(
                          widget.email,
                          style: TextStyle(
                              fontSize: 16.0,
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
                      color:
                          Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
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
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Text(
                          widget.contact.toString(),
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),

                // Address
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color:
                          Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
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
                          Icons.home,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          'Address',
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        Text(
                          widget.address,
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // accept or reject booking
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    print("Booking Accepted");
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                        color:
                            Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Icon(
                      Icons.done_rounded,
                      color: Colors.green,
                      size: 50.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print("Booking Rejeted");
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: BorderSide(
                        color:
                            Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                        width: 1,
                      ),
                    ),
                    color: Color.fromARGB(255, 255, 255, 255),
                    child: Icon(
                      Icons.highlight_off,
                      color: Colors.red,
                      size: 50.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
