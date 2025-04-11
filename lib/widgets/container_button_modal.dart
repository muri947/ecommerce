// widgets/container_button_modal.dart
import 'package:flutter/material.dart';

class ContainerButtonModel extends StatelessWidget {
  const ContainerButtonModel({
    super.key, 
    required this.bgColor, 
    required this.containerWidth, 
    required this.itext});

  final Color bgColor;
  final double containerWidth;
  final String itext;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      width: containerWidth,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          itext,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
