import 'package:conversor_moedas/app/models/currency_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  late List<Currencymodel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  late Currencymodel toCurrency;
  late Currencymodel fromCurrency;

  HomeController(this.toText, this.fromText) {
    currencies = Currencymodel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void convert() {
    String text = toText.text;
    double value = double.parse(text.replaceAll(',', '.'));
    double returnValue = 0;

    if (fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if (fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if (fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if (fromCurrency.name == 'BitCoin') {
      returnValue = value * toCurrency.bitcoin;
      
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}
