// screens/shipping_address.dart
import 'package:commerce/widgets/container_button_modal.dart';
import 'package:flutter/material.dart';

import 'Order_confirm_screen.dart';

class ShippingAdress extends StatefulWidget {
  const ShippingAdress({super.key});

  @override
  State<ShippingAdress> createState() => _ShippingAdressState();
}

class _ShippingAdressState extends State<ShippingAdress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shipping Address'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'City',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'State',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Zip Code',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Country',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    // Handle save address action
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const OrderConfirmScreen();
                      }),
                    );
                  },
                  child: ContainerButtonModel(
                    bgColor: Color(0xFFDB3022),
                    containerWidth: MediaQuery.of(context).size.width,
                    itext: 'Save Address',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
