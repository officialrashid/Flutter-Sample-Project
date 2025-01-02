import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 141, 198, 245),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String name = "Welcome To Home Screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true, // Centers the title on the app bar
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                color: Colors.amber,
                alignment:
                    Alignment.center, // Centers the child within the container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign:
                          TextAlign.center, // Centers text within its widget
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("Button Pressed");
                      },
                      child: const Text("Click me"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print("Button Clicked Elevated");
                          },
                          child: const Text("Click Me"),
                        ),
                        IconButton(
                          onPressed: () {
                            print("Mic button clicked");
                          },
                          icon: const Icon(Icons.mic),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.pink,
                  width: 2
                )
              ),
              child: Center(
                child: Text("Add To Cart",
                style: TextStyle(color: Colors.lightGreenAccent)
                ),
                
              ),
            ),
            
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 174, 153, 211),
                alignment:
                    Alignment.center, // Centers the child within the container
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      textAlign:
                          TextAlign.center, // Centers text within its widget
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print("Button Pressed");
                      },
                      child: const Text("Click Me"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            print("Button Clicked Elevated");
                          },
                          child: const Text("Click Me"),
                        ),
                        IconButton(
                          onPressed: () {
                            print("Mic button clicked");
                          },
                          icon: const Icon(Icons.mic),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
