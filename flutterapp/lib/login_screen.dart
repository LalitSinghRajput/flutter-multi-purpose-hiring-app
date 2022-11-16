import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/category_screen.dart';
import 'package:flutterapp/functions.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var email, password;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // var user;

  @override
  Widget build(BuildContext context) {
    void loginCheck(String email, String password) async {
      var res = await Functions.loginCheck(email, password);
      setState(() {
        Functions.user = res;
      });
    }

    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          height: 500,
          // color: Color.fromARGB(255, 239, 235, 235),
          child: Center(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: Color.fromARGB(255, 237, 230, 230).withOpacity(0.2),
                  width: 1,
                ),
              ),
              // color: Color.fromARGB(255, 255, 255, 255),
              elevation: 2.5,
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    children: [
                      // lottie
                      Center(
                        child: Image(
                          image: AssetImage('./images/signin.png'),
                          fit: BoxFit.cover,
                          height: 150,
                        ),
                      ),

                      // Email
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter Email',
                          icon: Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                          // border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        controller: emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a email';
                          } else if (!value.contains('@')) {
                            return 'Please enter a valid email';
                          }
                        },
                      ),
                      Padding(padding: EdgeInsets.all(10)),

                      // Password
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          icon: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                          // border: OutlineInputBorder(),
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        controller: passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          }
                        },
                      ),

                      Padding(padding: EdgeInsets.all(10)),

                      // button
                      ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                email = emailController.text;
                                password = passwordController.text;
                                loginCheck(email, password);
                              });
                              print(email);
                              print(password);
                              print(Functions.user);

                              if (Functions.user != Null) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => categoryScreen()),
                                );
                              }
                            }
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 18),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
