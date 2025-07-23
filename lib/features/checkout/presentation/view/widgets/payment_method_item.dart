
import 'package:flutter/material.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.isActive,
    required this.image,
  });

  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: 103,
      height: 62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        border: Border.all(
          color: isActive ? Colors.green : Color(0xff000000),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: isActive ? Colors.green : Colors.white,
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
        child: Image.asset(
          image,
          height: 24,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
