import 'package:chechout_app/core/utils/api_keys.dart';
import 'package:chechout_app/features/checkout/presentation/view/my_cart_view.dart';
import 'package:chechout_app/features/checkout/presentation/view/payment_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main() {
  Stripe.publishableKey = ApiKeys.publishableKey;
  runApp(const ChechOutApp());
}

//https://www.figma.com/file/ZtjGQKt7C9dFGGfDOL9qbz/Credit-Card-Checkout-%26-Payment-App-Screen-(Community)?node-id=1%3A44&mode=dev
class ChechOutApp extends StatelessWidget {
  const ChechOutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
