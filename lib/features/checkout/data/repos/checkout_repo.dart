import 'package:chechout_app/core/utils/errors/failures.dart';
import 'package:chechout_app/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:chechout_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
