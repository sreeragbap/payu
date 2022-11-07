import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:payu_checkoutpro_flutter/payu_checkoutpro_flutter.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureInjection(String env) async {
  // PayUCheckoutProProtocol? _checkoutPro;
  // getIt.registerSingleton<PayUCheckoutProFlutter>(
  //     PayUCheckoutProFlutter(_checkoutPro!));
  $initGetIt(getIt, environment: env);
}
