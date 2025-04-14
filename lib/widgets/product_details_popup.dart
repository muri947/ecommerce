// widgets/product_details_popup.dart
import 'package:commerce/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

import '../screens/cart_screen.dart';

// ignore: must_be_immutable
class ProductDetailPopUp extends StatelessWidget {
  final iStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  ProductDetailPopUp({super.key});

  List<Color> clrs = [Colors.red, Colors.green, Colors.indigo, Colors.amber];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showBottomSheet(
          context: context,
          builder:
              (context) => Container(
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Size : ', style: iStyle),
                                SizedBox(height: 20),
                                Text('Color : ', style: iStyle),
                                SizedBox(height: 20),
                                Text('Total : ', style: iStyle),
                                SizedBox(height: 20),
                              ],
                            ),
                            SizedBox(width: 30),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10),
                                    Text("S", style: iStyle),
                                    SizedBox(width: 30),
                                    Text("M", style: iStyle),
                                    SizedBox(width: 30),
                                    Text("L", style: iStyle),
                                    SizedBox(width: 30),
                                    Text("XL", style: iStyle),
                                    SizedBox(width: 30),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Container(
                                  child: Row(
                                    children: [
                                      for (var i = 0; i < 4; i++)
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 5,
                                          ),
                                          height: 30,
                                          width: 30,
                                          decoration: BoxDecoration(
                                            color: clrs[i],
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text('-', style: iStyle),
                                    SizedBox(width: 30),
                                    Text('1', style: iStyle),
                                    SizedBox(width: 30),
                                    Text('+', style: iStyle),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Price :',
                              style: iStyle
                            ),
                            Text(
                              '\$ 40.00',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDB3022),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, 
                                MaterialPageRoute(builder: (context)=>
                                  CartScreen()
                                ),
                              );
                            },
                            child: ContainerButtonModel(
                              bgColor: Color(0xFFDB3022),
                              containerWidth:
                                  MediaQuery.of(context).size.width / 1.5,
                              itext: "Checkout",
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
        );
      },
      child: ContainerButtonModel(
        bgColor: Color(0xFFDB3022),
        containerWidth: MediaQuery.of(context).size.width / 1.5,
        itext: "Buy Now",
      ),
    );
  }
}
