import 'package:flutter/material.dart';
import 'package:flutterapp/category_box.dart';

class ProfessionalCategory extends StatefulWidget {
  const ProfessionalCategory({super.key});

  @override
  State<ProfessionalCategory> createState() => _ProfessionalCategoryState();
}

class _ProfessionalCategoryState extends State<ProfessionalCategory> {
  List professionalCategoryObj = [
    {
      "title": "Teacher",
      "imgSrc": 'teacher',
    },
    {
      "title": "Lawyer",
      "imgSrc": 'lawyer',
    },
    {
      "title": "Doctor",
      "imgSrc": 'doctor',
    },
    {
      "title": "Architect",
      "imgSrc": 'architect',
    },
    {
      "title": "Doctor",
      "imgSrc": 'doctor',
    },
    {
      "title": "Architect",
      "imgSrc": 'architect',
    },
    {
      "title": "Doctor",
      "imgSrc": 'doctor',
    },
    {
      "title": "Architect",
      "imgSrc": 'architect',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return // category box
        Container(
      child: Expanded(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 320,
            childAspectRatio: 6 / 5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
          itemCount: professionalCategoryObj.length,
          itemBuilder: (BuildContext context, int index) {
            return Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: CategoryBox(
                  categoryTitle:
                      professionalCategoryObj[index]['title'].toString(),
                  imgSrc: professionalCategoryObj[index]['imgSrc'].toString(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
