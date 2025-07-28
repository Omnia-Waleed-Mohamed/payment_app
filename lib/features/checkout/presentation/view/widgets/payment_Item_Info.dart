import 'package:chechout_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({super.key, required this.title, required this.value});

  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1),
      child: Row(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: Styles.style18,
          ),
          Spacer(),
          Text(
            value,
            style: Styles.styleBold18,
          )
        ],
      ),
    );
  }
}
