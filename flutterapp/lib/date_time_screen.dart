import 'package:flutter/material.dart';
import 'package:flutterapp/booking_success_screen.dart';
import 'package:intl/intl.dart';

class DateTimeScreen extends StatefulWidget {
  const DateTimeScreen({super.key});

  @override
  State<DateTimeScreen> createState() => _DateTimeScreenState();
}

class _DateTimeScreenState extends State<DateTimeScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String selectedDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  TimeOfDay _timeOfDay = TimeOfDay.now();
  var address = "";

  final addressController = TextEditingController();

  void _showDateTimePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2022),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        selectedDate = DateFormat('dd-MM-yyyy').format(value!);
      });
    });
  }

  void _showTimePicker() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        _timeOfDay = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Select Date and Time'),
        ),
        backgroundColor: Color.fromARGB(255, 241, 236, 236),
        body: Container(
          padding: EdgeInsets.all(10.0),
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
            elevation: 2.5,
            child: Form(
                key: _formKey,
                child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                    child: ListView(
                      children: [
                        Text(
                          selectedDate,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                        Padding(padding: EdgeInsets.all(5.0)),
                        ElevatedButton(
                            onPressed: _showDateTimePicker,
                            child: Text('Select Date')),
                        Padding(padding: EdgeInsets.all(10.0)),
                        Text(_timeOfDay.format(context).toString(),
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.w500)),
                        Padding(padding: EdgeInsets.all(5.0)),
                        ElevatedButton(
                            onPressed: _showTimePicker,
                            child: Text('Select Time')),
                        Padding(padding: EdgeInsets.all(10.0)),
                        TextFormField(
                          decoration: InputDecoration(
                              labelText: 'Address: ',
                              labelStyle: TextStyle(fontSize: 20),
                              errorStyle: TextStyle(
                                  color: Colors.redAccent, fontSize: 15)),
                          controller: addressController,
                          // The validator receives the text that the user has entered.
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please Enter Address';
                            }
                            return null;
                          },
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Validate returns true if the form is valid, otherwise false.
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                address = addressController.text;
                                // name = nameController.text;
                                // email = emailController.text;
                                // password = passwordController.text;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookingSuccess()),
                              );
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ],
                    ))),
          ),
        ));
  }
}
