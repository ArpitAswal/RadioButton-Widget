import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Radio Button Example';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

List<String> choice=[ 'Java', 'C', 'kotlin', 'Swift' ];

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});


  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String ans = choice[3];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('www.javatpoint.com'),  // Context or options
          leading: Transform.scale(
            scale: 1.2,
            child: Radio(
             // splashRadius: 21, //The splash radius of the circular Material ink response
             // materialTapTargetSize: MaterialTapTargetSize.padded,//Configures the minimum size of the tap target
              //autofocus: true,
              toggleable: false,//Set to true if this radio button is allowed to be returned to an indeterminate state by selecting it again when selected.
              mouseCursor: MaterialStateMouseCursor.clickable,// mouse cursor when it top of the circle
              visualDensity: VisualDensity.compact,//Defines how compact the radio's layout will be.
              value: choice[0], // item of list or answer of our options
              groupValue: ans, // our selected answer or The currently selected value for a group of radio buttons.
              //focusColor: Colors.teal,
              //hoverColor: Colors.blue, //The color for the radio's Material when a pointer is hovering over it.
             // overlayColor: const MaterialStatePropertyAll<Color>(Colors.purple),//The color for the radio's Material.
              activeColor: Colors.green,// when we select option then circle color change into this color
              //fillColor: const MaterialStatePropertyAll<Color>(Colors.red),// before select option or not select option circle color
              onChanged: (String? value) { // whenever we change the value it triggered
                setState(() {
                  ans = value!;
                });
              },
            ),
          ),
        ),
        ListTile(
          title: const Text('www.w3school.com'),
          leading: Radio(
            value: choice[1],
            groupValue: ans,
            onChanged: (String? value) {
              setState(() {
                ans = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('www.tutorialandexample.com'),
          leading: Radio(
            value: choice[2],
            groupValue: ans,
            onChanged: (String? value) {
              setState(() {
                ans = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}

/* A radio button is also known as the options button which holds the Boolean value. It allows the user to choose only one option from a
 predefined set of options. We can arrange the radio button in a group of two or more and displayed on the screen as circular holes
 with white space (for unselected) or a dot (for selected). We can also provide a label for each corresponding radio button describing
 the choice that the radio button represents. A radio button can be selected by clicking the mouse on the circular hole or using a
  keyboard shortcut.
 Flutter allows us to use radio buttons with the help of 'Radio', 'RadioListTile', or 'ListTitle' Widgets.
The flutter radio button does not maintain any state itself. When we select any radio option, it invokes the onChanged callback and
 passing the value as a parameter. If the value and groupValue match, the radio option will be selected.*/