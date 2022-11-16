import 'package:flutter/material.dart';
import 'package:flutterapp/booking_card.dart';
import 'package:flutterapp/functions.dart';
import 'package:flutterapp/no_bookings.dart';

class YourBookings extends StatefulWidget {
  const YourBookings({super.key});

  @override
  State<YourBookings> createState() => _YourBookingsState();
}

class _YourBookingsState extends State<YourBookings> {
  List Bookings = [];
  List AllUsers = [];
  List BookingsList = [];
  var customer;

  void fetchAllBookings() async {
    var res = await Functions.getAllBookings();
    setState(() {
      Bookings = res;
    });
    for (var currbooking in Bookings) {
      if (currbooking['booking_accepted'] == false &&
          currbooking['booking_rejected'] == false) {
        BookingsList.add(currbooking);
      }
    }
  }

  // void fetchUserById(String id) async {
  //   var res = await Functions.getUserById(id);
  //   setState(() {
  //     customer = res;
  //   });
  // }

  void fetchAllUsers() async {
    var res = await Functions.getAllUsers();
    setState(() {
      AllUsers = res;
    });
  }

  void findCustomerFromAllUsers(String id) {
    for (var user in AllUsers) {
      // print(user['_id']);
      if (user['_id'] == id) {
        // setState(() {
        //   customer = user;
        // });
        customer = user;
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAllBookings();
    fetchAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Bookings'),
      ),
      body: (BookingsList.isEmpty)
          ? NoBookings()
          : ListView.builder(
              itemCount: BookingsList.length,
              itemBuilder: (context, ind) {
                // print(Bookings[ind]['customerid']);
                // fetchUserById(Bookings[ind]['customerid']);
                findCustomerFromAllUsers(BookingsList[ind]['customerid']);
                // print(customer);
                return BookingCard(
                  imgsrc: customer['imgsrc'],
                  name: customer['name'],
                  email: customer['email'],
                  contact: customer['mobileno'],
                  address: customer['address'],
                  bookingData: BookingsList[ind],
                );
              },
            ),
    );
  }
}
