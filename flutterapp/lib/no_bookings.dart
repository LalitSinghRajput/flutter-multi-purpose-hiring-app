import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoBookings extends StatefulWidget {
  const NoBookings({super.key});

  @override
  State<NoBookings> createState() => _NoBookingsState();
}

class _NoBookingsState extends State<NoBookings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Lottie.asset(
            './images/no_bookings.json',
            repeat: true,
            height: 250,
          ),
          Text(
            'No More Bookings',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
