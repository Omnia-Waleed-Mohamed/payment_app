import 'dart:developer';

import 'package:chechout_app/core/utils/style.dart';
import 'package:chechout_app/features/checkout/presentation/view/thank_you_view.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/custom_credit_card.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/payment_method.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatefulWidget {
  PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: PaymentMethodsListView(),
      ),
      SliverToBoxAdapter(
        child: CustomCreditCard(
          autovalidateMode: autovalidateMode,
          formKey: formKey,
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20, left: 15, right: 15),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      log('payment');
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ThankYouView()));
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                    // Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //  builder: (context) => PaymentDetailsView()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text(
                    'payment',
                    style: Styles.style22,
                  )),
            ),
          ),
        ),
      )
    ]);
  }
}
