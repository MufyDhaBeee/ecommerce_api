import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: Icon(Icons.menu, color: Color.fromRGBO(10, 27, 62, 1)),
        title: Center(
          child: Text(
            'Ecommerce Api',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(10, 27, 62, 1),
            ),
          ),
        ),
        actions: [
          Icon(Icons.shopping_cart, color: Color.fromRGBO(10, 27, 62, 1)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 243, 242, 1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.search, color: Color.fromRGBO(107, 114, 128, 1)),
                  SizedBox(width: 10),
                  Text(
                    'Search curated collection...',
                    style: TextStyle(color: Color.fromRGBO(107, 114, 128, 1)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 35),
          //listview chips
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SizedBox(
              height: 35,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(246, 243, 242, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        'All Products',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(95, 95, 95, 1),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10);
                },
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //------------image----------------------------------------->>>
                Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                      child: Image.asset('assets/images/Sport Shoes.jpg', fit: BoxFit.cover,)),
                ),
                //-------Desciption Section---------------------->>>
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ACCESSORIES', style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(95, 95, 95, 1),
                      letterSpacing: 1,
                    ),),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Minimalist Series 4 \nWatch', maxLines: 2,
                      style: TextStyle(
                      color: Color.fromRGBO(28, 27, 27, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      overflow: TextOverflow.ellipsis,
                    ),),
                    SizedBox(height: 6,),
                    Row(
                      children: [
                        Icon(Icons.star, color: Color.fromRGBO(193, 144, 94, 1), size: 14,),
                        SizedBox(width: 4,),
                        Text('4.8', style: TextStyle(
                          color: Color.fromRGBO(28, 27, 27, 1),
                          fontSize: 14,
                        ),),
                        SizedBox(width: 2,),
                        Text('(124)', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(96, 96, 96, 1),
                        ),)
                      ],
                    ),
                    SizedBox(height: 12,),
                    //----write here-----

                  ],
                )

              ],
            ),
          ),

        ],
      ),
    );
  }
}
