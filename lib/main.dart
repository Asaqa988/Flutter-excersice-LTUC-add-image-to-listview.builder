import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List mycolors = ["blue", "green", "red", "purple  "];
  List mycolorsinflutter = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.purple
  ];
  List colorNumber = ["One","Two","Three","Four"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(),
        body: Container(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text("${mycolors[i]}"),
                  subtitle: Text("${colorNumber[i]}"),
                  leading: Icon(Icons.colorize, color: mycolorsinflutter[i]),
                  // trailing: Image(image: NetworkImage("")),
                );
              }),
        ),
      ),
    );
  }
}
