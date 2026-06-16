import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: Icon(Icons.menu, color: Color.fromRGBO(10, 27, 62, 1),),
        title: Center(
          child: Text('Test Api', style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(10, 27, 62, 1),
          ),),
        ),
        actions: [
          Icon(Icons.shopping_cart, color: Color.fromRGBO(10, 27, 62, 1)),
        ],
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
