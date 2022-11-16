import 'package:flutter/material.dart';
import 'package:flutterapp/person_list.dart';

class CategoryBox extends StatefulWidget {
  final String categoryTitle, imgSrc;
  // CategoryBox(String categoryTitle, {super.key});

  CategoryBox({Key? key, required this.categoryTitle, required this.imgSrc})
      : super(key: key);

  @override
  State<CategoryBox> createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  bool selected = false;

  static const TextStyle categoryTextSelected =
      TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold);

  static const TextStyle categoryTextUnSelected =
      TextStyle(fontSize: 20, color: Colors.blue, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Color.fromARGB(255, 207, 207, 207).withOpacity(0.2),
            width: 1,
          ),
        ),
        // color: Colors.blue,
        color: Color.fromARGB(255, 234, 235, 235),
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(5.0),
          // margin: EdgeInsets.all(10.0),
          height: 150,
          child: Column(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage('./images/${widget.imgSrc}.png'),
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
              Text(
                widget.categoryTitle,
                style: selected ? categoryTextSelected : categoryTextUnSelected,
              )
            ],
          ),
        ),
      ),
      onTap: () {
        setState(() {
          selected = !selected;
          print(widget.categoryTitle);
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    PersonList(category: widget.categoryTitle)),
          ).then((value) => setState(() {}));

          // ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text("Selected: ${widget.categoryTitle}")));
        });
      },
    );
  }
}
