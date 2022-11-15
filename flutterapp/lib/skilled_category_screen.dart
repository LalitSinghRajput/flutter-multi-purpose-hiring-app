import 'package:flutter/material.dart';

import 'category_box.dart';

class SkilledCategory extends StatefulWidget {
  const SkilledCategory({super.key});

  @override
  State<SkilledCategory> createState() => _SkilledCategoryState();
}

class _SkilledCategoryState extends State<SkilledCategory> {
  List skilledCategoryObj = [
    {
      "title": "Electrician",
      "imgSrc": 'electrician',
    },
    {
      "title": "Plumber",
      "imgSrc": 'plumber',
    },
    {
      "title": "Painter",
      "imgSrc": 'painter',
    },
    {
      "title": "Carpenter",
      "imgSrc": 'carpenter',
    },
    {
      "title": "Catering",
      "imgSrc": 'catering',
    },
    {
      "title": "Barber",
      "imgSrc": 'barber',
    },
    {
      "title": "Painter",
      "imgSrc": 'painter',
    },
    {
      "title": "Carpenter",
      "imgSrc": 'carpenter',
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
          itemCount: skilledCategoryObj.length,
          itemBuilder: (BuildContext context, int index) {
            return Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                child: CategoryBox(
                  categoryTitle: skilledCategoryObj[index]['title'].toString(),
                  imgSrc: skilledCategoryObj[index]['imgSrc'].toString(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
