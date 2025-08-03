import 'package:chechout_app/core/utils/style.dart';
import 'package:chechout_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:chechout_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:chechout_app/features/checkout/presentation/view/thank_you_view.dart';
import 'package:chechout_app/features/checkout/presentation/view/widgets/payment_method.dart';
import 'package:chechout_app/features/checkout/view_model/payment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodeBottomSheet extends StatelessWidget {
  const PaymentMethodeBottomSheet({super.key, this.isLoading = false});

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: SizedBox(
              width: double.infinity,
              child: BlocConsumer<PaymentCubit, PaymentState>(
                listener: (context, state) {
                  if (state is PaymentSuccess) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ThankYouView(),
                      ),
                    );
                  }
                  if (state is PaymentFailure) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
                builder: (context, state) {
                  return ElevatedButton(
                      onPressed: () {
                        PaymentIntentInputModel paymentIntentInputModel =
                            PaymentIntentInputModel(
                                amount: '100',
                                currency: 'usd',
                                customerId: 'cus_SnUvbjCUGKgJkt');
                        BlocProvider.of<PaymentCubit>(context).makePayment(
                          paymentIntentInputModel: paymentIntentInputModel,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: isLoading
                          ? CircularProgressIndicator(
                              color: Colors.white,
                            )
                          : Text(
                              'Continue',
                              style: Styles.style22,
                            ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
