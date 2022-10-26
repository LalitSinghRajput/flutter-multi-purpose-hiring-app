import 'package:flutter/material.dart';
import 'package:flutterapp/professional_category_screen.dart';
import 'package:flutterapp/skilled_category_screen.dart';

class categoryScreen extends StatefulWidget {
  const categoryScreen({super.key});

  @override
  State<categoryScreen> createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen> {
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

          Padding(padding: EdgeInsets.all(5.0)),
          SizedBox(
            width: 330,
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 20.0),
                )),
          ),
          Padding(padding: EdgeInsets.all(2.0)),
        ],
      ),
    );
  }
}
