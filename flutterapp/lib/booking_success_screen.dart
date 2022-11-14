import 'package:flutter/material.dart';
import 'package:flutterapp/person_card.dart';
import 'package:lottie/lottie.dart';

class BookingSuccess extends StatefulWidget {
  const BookingSuccess({super.key});

  @override
  State<BookingSuccess> createState() => _BookingSuccessState();
}

class _BookingSuccessState extends State<BookingSuccess>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 234, 238, 234),
      padding: EdgeInsets.symmetric(vertical: 25),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
        height: 500,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
              width: 1,
            ),
          ),
          color: Color.fromARGB(255, 255, 255, 255),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  // Lottie.network(
                  //   'https://assets6.lottiefiles.com/packages/lf20_sabvcsrv.json',
                  //   repeat: false,
                  //   height: 250,
                  // ),
                  Lottie.asset(
                    './images/success.json',
                    repeat: false,
                    height: 250,
                  ),
                  Text(
                    'Booked',
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  personCard(
                    imgsrc:
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600',
                    name: 'Rohit',
                    jobs: 450,
                    rating: 4.5,
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Date: ',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '10/12/22',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(10.0)),

                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Time: ',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '11:45 AM',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
