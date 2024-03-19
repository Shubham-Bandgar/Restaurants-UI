import 'package:flutter/material.dart';
import 'food_card.dart';
import 'order_pages/order_page1.dart';
import 'order_pages/order_page2.dart';
import 'order_pages/order_page3.dart';
import 'order_pages/order_page4.dart';
import 'order_pages/order_page5.dart';
import 'order_pages/order_page6.dart';

class FoodCategoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/fd2.jpeg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: Text(
                      'Different Kinds of Food',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Food Category  __________________',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: FoodCard(
                            image: 'assets/images/d.jpeg',
                            description: 'Lassi                       1 Packet',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => order_page1(
                                    title: 'Lassi',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: FoodCard(
                            image: 'assets/images/ff.jpeg',
                            description: 'Sandwich               4 Packets',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => order_page2(
                                    title: 'Sandwich',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: FoodCard(
                            image: 'assets/images/df.jpeg',
                            description: 'Dosa                         3 Packets',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => order_page3(
                                    title: 'Dosa',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(height: 20.0),
                    Text(
                      'Best Seller   __________________',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: FoodCard(
                            image: 'assets/images/f.jpeg',
                            description: 'Samosa',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => order_page4(
                                    title: 'Samosa',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: FoodCard(
                            image: 'assets/images/s.jpeg',
                            description: 'Fruits',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => order_page5(
                                    title: 'Fruits',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: FoodCard(
                            image: 'assets/images/sd.jpeg',
                            description: 'Special',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => order_page6(
                                    title: 'Special',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
