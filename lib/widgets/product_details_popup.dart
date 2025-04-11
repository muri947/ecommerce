// widgets/product_details_popup.dart
import 'package:commerce/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class ProductDetailPopUp extends StatelessWidget {
  final iStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black87,
  );

  const ProductDetailPopUp({super.key});

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Size : ', style: iStyle,),
                              SizedBox(height: 20,),
                              Text('Color : ', style: iStyle,),
                              SizedBox(height: 20,),
                              Text('Total : ', style: iStyle,),
                            ],
                          )
                        ],
                      )
                    ],
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
