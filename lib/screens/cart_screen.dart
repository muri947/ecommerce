// screens/cart_screen.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List imagesList = [
    "images/image1.jpg",
    "images/image2.jpg",
    "images/image3.jpg",
    "images/image4.jpg",
  ];

  List productTiles = ["Warm Zipper", "Knitted Woo", "Zipper Win", "Child Win"];

  List prices = ["\$300", "\$650", "\$900", "\$20"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                // height: 200,
                child: ListView.builder(
                  itemCount: imagesList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Color(0xFFDB3022),
                            value: true, 
                            onChanged: (val){}
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagesList[index],
                              height: 90,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productTiles[index],
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text("Hooded Jacket",
                              style: TextStyle(
                                color: Colors.black26, fontSize: 16
                              ),),
                              SizedBox(height: 10,),
                              Text(prices[index],
                              style: TextStyle(
                                color: Color(0xFFDB3022),
                                fontSize: 18,
                                fontWeight: FontWeight.w900
                              ),),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.minus,),
                              SizedBox(width: 20,),
                              Text("1",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500
                              ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
