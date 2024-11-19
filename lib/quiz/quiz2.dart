// indria azzahra  
// 21101152630157
// 21101152630157
// Quiz Page 2 

import 'dart:math';
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
          title: const Text('Music Minang'),
        ),
        body: MusicMinang(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Add your action here
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class MusicMinang extends StatelessWidget {
  final List<Map<String, String>> penyanyi = [
    {"nama": "Kintani", "album": "Nama Album"},
    {"nama": "Rayola", "album": "Nama Album"},
    {"nama": "Fauzana", "album": "Janji ka janji"},
    {"nama": "David Iztambul", "album": "Nama Album"},
    {"nama": "Elsa Pitaloka", "album": "Nama Album"},
  ];

   MusicMinang({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: penyanyi.length,
      itemBuilder: (context, index) {
        if (index == 3) {
          // Display an image at index 3
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/3.jpeg',
              fit: BoxFit.cover,
            ),
          );
        } else if (index == 4) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/3.jpeg'),
            ),
            title: Text(penyanyi[index]['nama']!),
            subtitle: Text(penyanyi[index]['album']!),
            trailing: IconButton(
              icon: const Icon(Icons.add),
              color: Colors.blue,
              onPressed: () {
                // Add your action here
              },
            ),
          );
        } else {
          // Generate a random color for the CircleAvatar background
          Color randomColor =
              Color((Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                  .withOpacity(1.0);
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: randomColor,
              child: Text(
                penyanyi[index]['nama']![0].toUpperCase(),
                style:const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(penyanyi[index]['nama']!),
            subtitle: Text(penyanyi[index]['album']!),
          );
        }
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
