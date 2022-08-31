import 'package:flutter/material.dart';

void main() {
  runApp(const WelcomeApp());
}

const names = [
  'Kay Ti',
  'Geoff Cramer',
  // INSERT YOUR NAME HERE
];

class WelcomeApp extends StatelessWidget {
  const WelcomeApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purdue Flutter Club',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
                    child: Image.asset(
                      'assets/images/purdue_logo.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const Expanded(flex: 1, child: Icon(Icons.close)),
                  Expanded(
                    flex: 5,
                    child: Image.asset(
                      'assets/images/flutter_logo.png',
                      scale: 8,
                    ),
                  ),
                ],
              ),
              const Text('Welcome to the Purdue Flutter Club!'),
              const Text('Here are our great members:'),
              Expanded(
                child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: ((context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(names[index])),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
