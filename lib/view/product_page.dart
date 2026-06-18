import 'package:flutter/material.dart';
import 'package:ratings_plus/ratings_plus.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(240, 237, 236, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'TRAVEL & GEAR',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(96, 96, 96, 1),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'SKU: BTQ-7729-X',
                    style: TextStyle(
                      color: Color.fromRGBO(197, 198, 207, 1),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Archon Technical Backpack',
                style: TextStyle(
                  color: Color.fromRGBO(28, 27, 27, 1),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  RatingBarIndicator(
                    itemBuilder: (context, index) =>
                        Icon(Icons.star, color: Color.fromRGBO(193, 144, 94, 1)),
                    itemCount: 5,
                    itemSize: 17.0,
                    direction: Axis.horizontal,
                    value: 4.5,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(28, 27, 27, 1),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '(1,240 reviews)',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(96, 96, 96, 1),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  Container(
                    height: 358,
                    width: 358,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Image.asset(
                      'assets/images/Backpack.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 16,
                      right: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        height: 28.5,
                        width: 89.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(193, 144, 94, 1),
                        ),
                        child: Center(
                          child: Text('FEATURED', style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(255, 255, 255, 1)
                          ),),
                        ),
                      )
                  ),
                  Positioned(
                    bottom: 16,
                      right: 16,
                      child: Container(
                        height: 34,
                        width: 34,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.zoom_in, color: Color.fromRGBO(0, 0, 0, 1),),
                      )
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 82,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1.8,
                    color: Color.fromRGBO(239, 241, 244, 1.0),
                    //color: Color.fromRGBO(213, 214, 220, 1.0),
                  )
                ),
                child:Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text('Current Price', style: TextStyle(
                            color: Color.fromRGBO(96, 96, 96, 1),
                            fontSize: 12,fontWeight: FontWeight.w500,
                          ),),
                          Text('\$185.00', style: TextStyle(
                            color: Color.fromRGBO(10, 27, 62, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),

                      Container(
                        height: 48,
                        width: 159,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(10, 27, 62, 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.shopping_cart_outlined, color: Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.w700,),
                              Text('Add to Cart', style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),)
                            ],
                          ),
                        ),

                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Description', style: TextStyle(
                color: Color.fromRGBO(28, 27, 27, 1),
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(height: 5,),
              Divider(
                thickness: 1.8,
                color: Color.fromRGBO(239, 241, 244, 1.0),
              ),
              SizedBox(height: 5,),
              Text('Designed for the modern professional, the Archon Technical Backpack combines minimalist aesthetics with rugged performance. Crafted'
                ' from premium 1000D ballistic nylon, it offers '
                ' superior water resistance and durability for both '
                ' urban commutes and weekend expeditions. ', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(69, 70, 78, 1),
                height: 2,
              ),),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        border: Border.all(
                          width: 2.5,
                          color: Color.fromRGBO(10, 27, 62, 1),
                        )
                    ),
                    child: Icon(Icons.check, color: Color.fromRGBO(10, 27, 78, 1,), fontWeight: FontWeight.w500, size: 20,),
                  ),
                  SizedBox(width: 8,),
                  Text('Dedicated 16" padded laptop sleeve', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(69, 70, 78, 1),
                  ),),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2.5,
                          color: Color.fromRGBO(10, 27, 62, 1),
                        )
                    ),
                    child: Icon(Icons.check, color: Color.fromRGBO(10, 27, 78, 1,), fontWeight: FontWeight.w500, size: 20,),
                  ),
                  SizedBox(width: 8,),
                  Text('Hidden RFID-blocking security pocket', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(69, 70, 78, 1),
                  ),),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 2.5,
                          color: Color.fromRGBO(10, 27, 62, 1),
                        )
                    ),
                    child: Icon(Icons.check, color: Color.fromRGBO(10, 27, 78, 1,), fontWeight: FontWeight.w500, size: 20,),
                  ),
                  SizedBox(width: 8,),
                  Text('Ergonomic breathable mesh back panel', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(69, 70, 78, 1),
                  ),),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Container(
                    height: 88,
                    width: 173,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 243, 242, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('4.8', style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(10, 27, 78, 1,),
                        ),),
                        Text('OVERALL RATING', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(96, 96, 96, 1),
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 88,
                    width: 173,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 243, 242, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Center(
                          child: Text('96%', style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(10, 27, 78, 1),
                          ),),
                        ),
                        Text('RECOMMENDS', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(96, 96, 96, 1),
                        ),),

                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),


            ],
          ),
        ),
      ),
    );
  }
}
