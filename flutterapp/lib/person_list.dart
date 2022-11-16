import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/functions.dart';
import 'package:flutterapp/loading_screen.dart';
import 'package:flutterapp/person_card.dart';

class PersonList extends StatefulWidget {
  final String category;

  // const PersonList({super.key});

  PersonList({Key? key, required this.category}) : super(key: key);

  @override
  State<PersonList> createState() => _PersonListState();
}

class _PersonListState extends State<PersonList> {
  List person = [
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
    {
      "imgsrc":
          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600",
      "name": "Rohan",
      "jobs": 450,
      "rating": 4.5,
    },
  ];
  bool isLoading = true;

  List persons = [];
  void fetchProfilesByCategory() async {
    persons =
        await Functions.getProfilesByCategory(widget.category.toLowerCase());
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchProfilesByCategory();
  }

  @override
  // Widget build(BuildContext context) =>isLoading?LoadingScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category: ${widget.category}"),
      ),
      backgroundColor: Color.fromARGB(255, 236, 237, 240),
      body: isLoading
          ? LoadingScreen()
          : Container(
              // child: Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  childAspectRatio: 9 / 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 5,
                ),
                itemCount: persons.length,
                itemBuilder: (BuildContext context, int index) {
                  print(persons[index]['_id']);
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: personCard(
                        imgsrc: persons[index]["imgsrc"],
                        name: persons[index]["name"],
                        jobs: persons[index]["jobs"],
                        rating: 4.5,
                        id: persons[index]['_id'],
                      ),
                    ),
                  );
                },
              ),
              // ),
            ),
    );
  }
}
