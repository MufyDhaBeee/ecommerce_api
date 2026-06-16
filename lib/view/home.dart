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
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 243, 242, 1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Icon(Icons.search, color: Color.fromRGBO(107, 114, 128, 1),),
                  SizedBox(width: 10,),
                  Text('Search curated collection...', style: TextStyle(
                    color: Color.fromRGBO(107, 114, 128, 1),
                  ),),
                ],
              ),
            ),
          ),
          SizedBox(height: 35,),
          //listview chips
          Container(
            height: 35,
            width: 95,
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 243, 242, 1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text('All Products', style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(95, 95, 95, 1),
              ),),
            ),
          )

        ],
      ),
    );
  }
}
