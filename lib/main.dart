import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.indigo,
          appBarTheme: AppBarTheme(
            backgroundColor: const Color.fromARGB(255, 141, 198, 245),
          )),
      home: HomeScreen(),
    );
  }
}

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  
   HomeScreen({super.key});
  String name = "Welcome To Home Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true, // Centers the title on the app bar
      ),
      body: Center(
        child: Text(
          name,
          style: const TextStyle(
          color: Colors.black, fontSize:15, fontWeight: FontWeight.bold,fontStyle: FontStyle.normal)),
      )
    );
  }
}
