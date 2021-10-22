import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:textformfield_example/widget/button_widget.dart';
import 'package:textformfield_example/widget/Second_screen.dart';

/*import 'package:ml_algo/ml_algo.dart';
import 'package:ml_dataframe/ml_dataframe.dart';
import 'package:ml_preprocessing/ml_preprocessing.dart';*/

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'App499 เจษฎาทำได้ !!!!';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primaryColor: Colors.red),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final formKey = GlobalKey<FormState>();
  String gender = '';
  String age = '';
  String bmi = '';
  String shoes = '';
  String budget = '';
  String pace = '';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Form(
          key: formKey,
          //autovalidateMode: AutovalidateMode.onUserInteraction,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              buildGender(),
              const SizedBox(height: 32),
              buildAge(),
              const SizedBox(height: 32),
              buildBMI(),
              const SizedBox(height: 32),
              buildShoes(),
              const SizedBox(height: 32),
              buildBudget(),
              const SizedBox(height: 32),
              buildPace(),
              const SizedBox(height: 32),
              buildSubmit(),
            ],
          ),
        ),
      );

  Widget buildGender() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Gender',
          border: OutlineInputBorder(),
          // errorBorder:
          //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          // focusedErrorBorder:
          //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          // errorStyle: TextStyle(color: Colors.purple),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Enter Gender';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => gender = value),
      );

  Widget buildAge() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Age',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Enter Age';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => age = value),
      );

  Widget buildBMI() => TextFormField(
        decoration: InputDecoration(
          labelText: 'BMI',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Enter BMI';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => bmi = value),
      );

  Widget buildShoes() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Shoes',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Enter Shoes';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => shoes = value),
      );

  Widget buildPace() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Pace',
          border: OutlineInputBorder(),
          // errorBorder:
          //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          // focusedErrorBorder:
          //     OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),
          // errorStyle: TextStyle(color: Colors.purple),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Enter Pace';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => pace = value),
      );

  Widget buildBudget() => TextFormField(
        decoration: InputDecoration(
          labelText: 'Budget',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Enter Budget';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => budget = value),
      );

  Widget buildSubmit() => Builder(
        builder: (context) => ButtonWidget(
          text: 'Submit',
          onClicked: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Second_screen()));
            /*final isValid = formKey.currentState.validate();

            if (isValid) {
              formKey.currentState.save();

              final message =
                  'Gender: $gender\nAge: $age\nBMI: $bmi\nShoes: $shoes\nBudger: $budget';
              final snackBar = SnackBar(
                content: Text(
                  message,
                  style: TextStyle(fontSize: 20),
                ),
                backgroundColor: Colors.green,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }*/
          },
        ),
      );
}
