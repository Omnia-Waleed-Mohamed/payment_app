import 'package:chechout_app/core/utils/api_keys.dart';
import 'package:chechout_app/core/utils/api_service.dart';
import 'package:chechout_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {

  final ApiService apiService = ApiService();
  Future<PaymentIntentModel> createPaymentIntent(PaymentIntentModel paymentIntentModel) async{
      
   var response = await  apiService.post(body: paymentIntentModel.toJson(), url: 'https://api.stripe.com/v1/payment_intents', token: ApiKeys.secretKey);



     var paymentIntent = PaymentIntentModel.fromJson(response.data);
     return paymentIntent;
  }
}