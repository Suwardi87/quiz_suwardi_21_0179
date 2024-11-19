// suwardi
// 21101152630179
// Quiz gambar 3

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu Restorant',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Menu Restoran',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
        ),
        
        body: Center (
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                margin: const EdgeInsets.all(10),
                width: constraints.maxWidth * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.grey,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const MenuRestoran(),
              );
            },
        )))
    );
  }
}

class MenuRestoran extends StatelessWidget {
  const MenuRestoran({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SectionTitle(title: 'Minuman'),
                MenuItem(
                  icon: Icons.wine_bar,
                  name: 'Teh Manis',
                  description: 'Minuman',
                ),
                MenuItem(
                  icon: Icons.wine_bar,
                  name: 'Teh Susu',
                  description: 'Minuman',
                ),
                MenuItem(
                  icon: Icons.wine_bar,
                  name: 'Kopi Susu',
                  description: 'Minuman',
                ),
                
                const SectionTitle(title: 'Makanan'),
                MenuItem(
                  icon: Icons.restaurant,
                  name: 'Nasi Goreng',
                  description: 'Makanan',
                ),
                MenuItem(
                  icon: Icons.restaurant,
                  name: 'Mie Goreng',
                  description: 'Makanan',
                ),
                MenuItem(
                  icon: Icons.restaurant,
                  name: 'Mie Rebus',
                  description: 'Makanan',
                ),
              ],
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Add To Cart'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(150, 50),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              ElevatedButton(
                onPressed: () {},
                child: const Text('Bayar'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(150, 50),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Color titleColor = title == 'Minuman' ? Colors.blue : title == 'Makanan' ? Colors.red : Colors.black;
    
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: titleColor,
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String name;
  final String description;

  const MenuItem({super.key, required this.icon, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: getIconColor(icon),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(name),
        subtitle: Text(description),
      ),
    );
  }

  Color getIconColor(IconData icon) {
    if (icon == Icons.wine_bar) {
      return Colors.blue;
    } else if (icon == Icons.restaurant) {
      return Colors.red;
    } else {
      return Colors.grey; // Default color
    }
  }
}
