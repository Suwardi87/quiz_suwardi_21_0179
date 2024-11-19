// indria azzahra  
// 21101152630157
// Quiz page 1

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard Aplikasi'),
        ),
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.amber),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/image.png',width: 80,),
                    Image.asset('assets/image.png',width: 80,),
                   Image.asset('assets/image.png',width: 80,),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Image Gallery'),
                      Image.asset('assets/1.jpeg'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Image Gallery'),
                      Image.asset('assets/1.jpeg'),
                    ],
                  ),
                ),
                // Add more containers or widgets as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
