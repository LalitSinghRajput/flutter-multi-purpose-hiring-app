import 'package:http/http.dart' as http;
import 'dart:convert';

class Functions {
  static Object user = Null;

  // function
  // for emulator localhost is 10.0.2.2
  static String baseUrl = "http://10.0.2.2:8000/";
  // static String baseUrl = "http://192.168.197.34:8000/";

  static Future<List> getAllProfiles() async {
    try {
      var response = await http
          .get(Uri.parse("http://192.168.197.34:8000/profile/getAllProfiles"));
      if (response.statusCode == 200) {
        print(response.body);
        print(response.body.runtimeType);
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  // function to fetch all bookings
  static Future<List> getAllBookings() async {
    try {
      var response = await http
          .get(Uri.parse("http://192.168.197.34:8000/bookings/getAllBookings"));
      if (response.statusCode == 200) {
        print(response.body);
        print(response.body.runtimeType);
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  // function to fetch all users
  static Future<List> getAllUsers() async {
    try {
      var response = await http
          .get(Uri.parse("http://192.168.197.34:8000/user/getAllUsers"));
      if (response.statusCode == 200) {
        print(response.body);
        print(response.body.runtimeType);
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  // function to fetch the profile by category
  static Future<List> getProfilesByCategory(String category) async {
    try {
      var response = await http.get(Uri.parse(
          "http://192.168.197.34:8000/profile/profileByCategory/${category}"));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  // function to fetch the profile by id
  static Future<Object> getPersonById(String id) async {
    try {
      var response = await http.get(
          Uri.parse("http://192.168.197.34:8000/profile/profileById/${id}"));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  // function to fetch the user by id
  static Future<Object> getUserById(String id) async {
    try {
      var response = await http
          .get(Uri.parse("http://192.168.197.34:8000/user/userById/${id}"));

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  // function for login check
  static Future<Object> loginCheck(String email, String password) async {
    try {
      var response = await http.post(
        Uri.parse("http://192.168.197.34:8000/user/loginUser"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      );
      if (response.statusCode == 200) {
        // print(response.body.runtimeType);
        return jsonDecode(response.body);
      } else {
        return jsonDecode("null");
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  // function for add booking
  static Future<Object> addNewBooking(
      String customerid, String profileid, String time, String date) async {
    print(customerid);
    print(profileid);
    print(time);
    print(date);
    try {
      var response = await http.post(
        Uri.parse("http://192.168.197.34:8000/bookings/newbooking"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'customerid': customerid,
          'profileid': profileid,
          'time': time,
          'date': date,
          'booking_accepted': 'false',
          "booking_rejected": "false",
        }),
      );

      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body);
      } else {
        return jsonDecode("error");
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
