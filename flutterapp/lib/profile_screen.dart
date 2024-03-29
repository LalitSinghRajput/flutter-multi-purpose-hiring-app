import 'package:flutter/material.dart';
import 'package:flutterapp/functions.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var currUser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      currUser = Functions.user;
      print("Current user: ");
      print(currUser);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Container(
        padding: EdgeInsets.all(10.0),
        color: Color.fromARGB(255, 241, 237, 237),
        child: Column(children: [
          // profile image
          ClipRRect(
            borderRadius: BorderRadius.circular(25), // Image border
            child: SizedBox.fromSize(
              size: Size.fromRadius(80),
              child: Image.network(
                  "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg?auto=compress&cs=tinysrgb&w=600",
                  fit: BoxFit.fill),
            ),
          ),

          // name
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                width: 1,
              ),
            ),
            elevation: 2.5,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Name',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    currUser['name'],
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),

          // email
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                width: 1,
              ),
            ),
            elevation: 2.5,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Email',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    currUser['email'],
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
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
                color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                width: 1,
              ),
            ),
            elevation: 2.5,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Contact',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    currUser['mobileno'].toString(),
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),

          // address
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                width: 1,
              ),
            ),
            elevation: 2.5,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Address',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    currUser['address'],
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
