import 'package:flutter/material.dart';
import 'package:flutterapp/functions.dart';
import 'package:flutterapp/loading_screen.dart';
import 'package:flutterapp/my_bookings.dart';
import 'package:flutterapp/professional_category_screen.dart';
import 'package:flutterapp/profile_screen.dart';
import 'package:flutterapp/skilled_category_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class categoryScreen extends StatefulWidget {
  const categoryScreen({super.key});

  @override
  State<categoryScreen> createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    Functions.getAllProfiles();
    isLoading = false;
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool professionalSelected = true, skilledSelected = false;

  static const TextStyle selectedStyle = TextStyle(
    fontFamily: 'mono',
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle unselectedStyle = TextStyle(
    color: Color.fromARGB(255, 3, 3, 3),
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  // function
  // for emulator localhost is 10.0.2.2
  // String baseUrl = "http://10.0.2.2:8000/profile/getAllProfiles";
  // String baseUrl = "http://192.168.197.34:8000/profile/getAllProfiles";

  // Future<List> getAllProfiles() async {
  //   try {
  //     var response = await http.get(Uri.parse(baseUrl));
  //     if (response.statusCode == 200) {
  //       print(response.body);
  //       print(response.body.runtimeType);
  //       return jsonDecode(response.body);
  //     } else {
  //       return Future.error('Server error');
  //     }
  //   } catch (e) {
  //     return Future.error(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a category'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(5.0)),
          Card(
            elevation: 2,
            color: Color.fromARGB(255, 242, 244, 241),
            child: Container(
              margin: EdgeInsets.all(1.0),
              padding: EdgeInsets.all(10.0),
              child: Row(children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      professionalSelected = !professionalSelected;
                      skilledSelected = false;
                    });
                  },
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.all(10.0),
                    color: professionalSelected == true
                        ? Colors.blue
                        : Colors.white,
                    child: Text(
                      'Professional',
                      style: professionalSelected == true
                          ? selectedStyle
                          : unselectedStyle,
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                InkWell(
                  onTap: () {
                    setState(() {
                      professionalSelected = false;
                      skilledSelected = !skilledSelected;
                    });
                  },
                  child: Container(
                    width: 150,
                    padding: EdgeInsets.all(10.0),
                    color: skilledSelected == true ? Colors.blue : Colors.white,
                    child: Center(
                      child: Text(
                        'Skilled',
                        style: skilledSelected == true
                            ? selectedStyle
                            : unselectedStyle,
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Padding(padding: EdgeInsets.all(5.0)),

          // render professional or skilled category container depending on selected category
          professionalSelected ? ProfessionalCategory() : SkilledCategory(),

          // Padding(padding: EdgeInsets.all(5.0)),
          // SizedBox(
          //   width: 330,
          //   child: ElevatedButton(
          //       onPressed: () {},
          //       child: Text(
          //         'Next',
          //         style: TextStyle(fontSize: 20.0),
          //       )),
          // ),
          Padding(padding: EdgeInsets.all(2.0)),
        ],
      ),

      //* Bottom Nav Bar
      // bottomNavigationBar: GNav(
      //   hoverColor: Color.fromARGB(255, 255, 255, 255),
      //   backgroundColor: Colors.blue,
      //   activeColor: Colors.white,
      //   color: Color.fromARGB(255, 228, 220, 220),
      //   gap: 8,
      //   tabs: [
      //     GButton(
      //       icon: Icons.home,
      //       text: 'Home',
      //     ),
      //     GButton(
      //       icon: Icons.notification_add_rounded,
      //       text: 'Notifications',
      //     ),
      //     GButton(
      //       icon: Icons.account_box_outlined,
      //       text: 'Account',
      //     ),
      //   ],
      // ),
      bottomNavigationBar: GNav(
          backgroundColor: Colors.blue,
          hoverColor:
              Color.fromARGB(255, 255, 255, 255), // tab button hover color
          haptic: true, // haptic feedback
          tabBorderRadius: 10,
          tabActiveBorder: Border.all(
              color: Color.fromARGB(255, 231, 227, 227),
              width: 1), // tab button border

          curve: Curves.easeOutExpo, // tab animation curves
          duration: Duration(milliseconds: 900), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: Color.fromARGB(255, 237, 232, 232), // unselected icon color
          activeColor: Color.fromARGB(
              255, 255, 255, 255), // selected icon and text color
          iconSize: 25,
          padding: EdgeInsets.symmetric(
              horizontal: 20, vertical: 10), // navigation bar padding
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              onPressed: () {},
            ),
            GButton(
              icon: Icons.notification_add_sharp,
              text: 'Notifications',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyBookings()),
                );
              },
            ),
            GButton(
              icon: Icons.account_box,
              text: 'Profile',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            )
          ]),
    );
  }
}
