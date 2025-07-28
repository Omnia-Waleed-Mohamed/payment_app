

import 'package:chechout_app/core/utils/errors/failures.dart';
import 'package:chechout_app/core/utils/stripe_service.dart';
import 'package:chechout_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:chechout_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class CheckoutRepoImpl extends CheckoutRepo{

  final StripeService stripeService =StripeService();
  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentModel paymentIntentModel}) async{
    
   try {
  await stripeService.makePayment(paymentIntentModel: paymentIntentModel);
  return const Right(null);

} catch (e) {
  return Left(ServerFailure(e.toString()));
}
   
  }


}