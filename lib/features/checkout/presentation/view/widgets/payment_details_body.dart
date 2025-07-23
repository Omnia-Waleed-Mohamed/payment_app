import 'package:chechout_app/core/utils/style.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/custom_credit_card.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/payment_method.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/payment_method_item.dart';
import 'package:flutter/material.dart';

class PaymentDetailsBody extends StatelessWidget {
   PaymentDetailsBody({super.key});

final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: PaymentMethodsListView(),
      ),
      SliverToBoxAdapter(
        child: CustomCreditCard(),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child:  Align(
          child: Padding(
              padding: EdgeInsets.only(bottom: 20,left: 15,right: 15),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                     // Navigator.push(
                         // context,
                         // MaterialPageRoute(
                            //  builder: (context) => PaymentDetailsView()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      'Complete Payment',
                      style: Styles.style22,
                    )),
              ),
            ),
        ),
      )

        
        
        
      ]
    );
  }
}

