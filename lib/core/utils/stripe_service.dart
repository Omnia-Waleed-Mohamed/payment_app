import 'package:chechout_app/core/utils/api_keys.dart';
import 'package:chechout_app/core/utils/api_service.dart';
import 'package:chechout_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentModel paymentIntentModel) async {
    var response = await apiService.post(
        body: paymentIntentModel.toJson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey);

    var paymentIntent = PaymentIntentModel.fromJson(response.data);
    return paymentIntent;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: 'omnia',
    ));
  }


  Future displayPaymentSheet()async{
    Stripe.instance.presentPaymentSheet();
  }


  Future makePayment({required PaymentIntentModel paymentIntentModel}) async{

   var paymentIntentInputModel =await createPaymentIntent(paymentIntentModel);
   await initPaymentSheet(paymentIntentClientSecret:paymentIntentInputModel.clientSecret!);
   await displayPaymentSheet();

  }
}
