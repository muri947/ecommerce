// screens/cart_screen.dart
import 'package:commerce/widgets/container_button_modal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'payement_method_screen.dart';

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
          padding: EdgeInsets.all(15),
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
                      margin: EdgeInsets.symmetric(vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            splashRadius: 20,
                            activeColor: Color(0xFFDB3022),
                            value: true,
                            onChanged: (val) {},
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagesList[index],
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
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
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Hooded Jacket",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                prices[index],
                                style: TextStyle(
                                  color: Color(0xFFDB3022),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.minus),
                              SizedBox(width: 12),
                              Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 12),
                              Icon(
                                CupertinoIcons.add,
                                color: Color(0xFFDB3022),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select All",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Checkbox(
                    splashRadius: 20,
                    activeColor: Color(0xFFDB3022),
                    value: false,
                    onChanged: (val) {},
                  ),
                ],
              ),
              Divider(height: 20, thickness: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Paiement",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),

                  Text(
                    "\$2000",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFDB3022),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => PayementMethodScreen(),
                  ));
                },
                child: ContainerButtonModel(
                  bgColor: Color(0xFFDB3022),
                  containerWidth: MediaQuery.of(context).size.width,
                  itext: "Check Out",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
