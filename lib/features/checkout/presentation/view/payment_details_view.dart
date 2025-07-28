import 'package:chechout_app/features/checkout/presentation/view/widgets/my_cart_view_body.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/payment_details_body.dart';
import 'package:flutter/material.dart';
import 'package:chechout_app/core/utils/style.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Payment Details',
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
      ),
      body: PaymentDetailsBody(),
    );
  }
}
