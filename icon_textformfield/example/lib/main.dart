import 'package:flutter/material.dart';
import 'package:icon_textformfield/icon_textformfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Icon TextField Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            FlutterLogo(
              size: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconTextFormField(
                icon: Icon(Icons.person_outline, color: Colors.black,),
                hintText: "Email",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconTextFormField(
                icon: Icon(Icons.lock_outline, color: Colors.black,),
                hintText: "Email",
              ),
            )
          ],
        ),
      ),
    );
  }
}

