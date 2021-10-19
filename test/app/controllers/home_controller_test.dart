import 'dart:math';

import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:conversor_moedas/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText, fromText);

  test('Deve Converter de Real para Dolar', () {
    toText.text = '2.0';

    homeController.convert();
    expect(fromText.text, '0.36');
  });
  test('Deve Converter de Real para Dolar com virgula', () {
    toText.text = '2,0';

    homeController.convert();
    expect(fromText.text, '0.36');
  });
  test('Deve Converter de Dolar para Real', () {
    toText.text = '1.0';
    homeController.toCurrency = Currencymodel(
          name: 'Dolar', real: 5.65, dolar: 1, euro: 0.85, bitcoin: 0.000088);
    homeController.fromCurrency = Currencymodel(
          name: 'Real', real: 1, dolar: 0.18, euro: 0.15, bitcoin: 0.000016);
    homeController.convert();
    expect(fromText.text,'5.65' );
  });
}
