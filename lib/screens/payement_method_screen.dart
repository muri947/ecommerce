// screens/payement_method_screen.dart
import 'package:commerce/screens/shipping_address.dart';
import 'package:commerce/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

class PayementMethodScreen extends StatefulWidget {
  const PayementMethodScreen({super.key});

  @override
  State<PayementMethodScreen> createState() => _PayementMethodScreenState();
}

class _PayementMethodScreenState extends State<PayementMethodScreen> {
  int _type = 1;
  void _handleRadio(Object? e) => setState(() {
    _type = e as int;
  }); 

  @override
  void initState() {
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment Method"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                Container(
                  width: size.width,
                  height: 55,
                  alignment: Alignment.topLeft,
                  margin : EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: _type == 1 
                            ? Border.all(color: Color(0xFFDB3022), width: 1) 
                            : Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color(0xFFDB3022),
                        ),
                        Text(
                          "Amazon Pay", 
                          style: _type == 1 
                            ? TextStyle(fontSize: 15,
                               fontWeight: FontWeight.w500, 
                               color: Colors.black)
                            : TextStyle(fontSize: 15,
                               fontWeight: FontWeight.w500, 
                               color: Colors.grey),
                        ),
                        Spacer(),
                        Image.asset(
                          'images/amazon-pay.png', 
                          width: 90, fit: BoxFit.cover,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),  
                Container(
                  width: size.width,
                  height: 55,
                  margin : EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: _type == 2
                            ? Border.all(color: Color(0xFFDB3022), width: 1) 
                            : Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color(0xFFDB3022),
                        ),
                        Text(
                          "Credit Card", 
                          style: _type == 2
                            ? TextStyle(fontSize: 15,
                               fontWeight: FontWeight.w500, 
                               color: Colors.black)
                            : TextStyle(fontSize: 15,
                               fontWeight: FontWeight.w500, 
                               color: Colors.grey),
                        ),
                        Spacer(),
                        Image.asset(
                          'images/visa.jpg', 
                          width: 60, fit: BoxFit.cover,),
                        Image.asset(
                          'images/mastercard.png',
                          width: 60, fit: BoxFit.cover,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  width: size.width,
                  height: 55,
                  margin : EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: _type == 3
                            ? Border.all(color: Color(0xFFDB3022), width: 1) 
                            : Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Radio(
                          value: 3,
                          groupValue: _type,
                          onChanged: _handleRadio,
                          activeColor: Color(0xFFDB3022),
                        ),
                        Text(
                          "Paypal", 
                          style: _type == 3
                            ? TextStyle(fontSize: 15,
                               fontWeight: FontWeight.w500, 
                               color: Colors.black)
                            : TextStyle(fontSize: 15,
                               fontWeight: FontWeight.w500, 
                               color: Colors.grey),
                        ),
                        Spacer(),
                        Image.asset(
                          'images/paypal.jpeg', 
                           width: 75, fit: BoxFit.cover,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Price :',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$ 40.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping Fee :',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      '\$ 15.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                  thickness: 1,
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payement :',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                    Text(
                      '\$ 55.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFDB3022),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => ShippingAdress()
                    ));
                  },
                  child: ContainerButtonModel(
                    
                    bgColor: Color(0xFFDB3022),
                     containerWidth: size.width, 
                     itext: 'Confirm Payment',),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
