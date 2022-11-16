import 'package:flutter/material.dart';
import 'package:flutterapp/functions.dart';

class BookingResponse extends StatefulWidget {
  const BookingResponse({super.key});

  @override
  State<BookingResponse> createState() => _BookingResponseState();
}

class _BookingResponseState extends State<BookingResponse> {
  List Bookings = [];
  List AllProfiles = [];
  List BookingsList = [];
  var profile;

  void fetchAllBookings() async {
    var res = await Functions.getAllBookings();
    setState(() {
      Bookings = res;
    });
    for (var currbooking in Bookings) {
      if (currbooking['booking_accepted'] == true ||
          currbooking['booking_rejected'] == true) {
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

  void fetchAllProfiles() async {
    var res = await Functions.getAllProfiles();
    setState(() {
      AllProfiles = res;
    });
  }

  void findCustomerFromAllUsers(String id) {
    for (var user in AllProfiles) {
      // print(user['_id']);
      if (user['_id'] == id) {
        setState(() {
          profile = user;
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAllBookings();
    fetchAllProfiles();
  }

  @override
  Widget build(BuildContext context) {
    // print("${BookingsList[0]['name']} has accepted");
    print(profile);
    return Scaffold(
      appBar: AppBar(title: Text('Booking Response')),
      body: Text('} has accepted your response'),
    );
  }
}
