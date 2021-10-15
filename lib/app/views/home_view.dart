// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:conversor_moedas/app/components/currency_box.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 30,
          right: 30,
          bottom: 20,
          ),
        child: ListView(
          children: [
            Image.asset('assets/images/logo1.png'),
            SizedBox(height: 50,),
              CurrencyBox(),
              SizedBox(height: 40,),
              CurrencyBox(),
              SizedBox(height: 30,),
            ElevatedButton(
              child: Text('CONVERTER'),
               onPressed: (){})
          ]
        ),
      ),
    )
    );
  }
}
