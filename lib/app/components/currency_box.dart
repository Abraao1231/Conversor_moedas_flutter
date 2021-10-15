import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
String dropdownValue = 'Real';
  @override
  Widget build(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 55,
                    child: DropdownButton<String>(
      value: dropdownValue,
     
      iconSize: 26,
      underline: Container(
        height: 2,
        color: Colors.blue.shade400,
      ),
      onChanged: (String? newValue) {   
          dropdownValue = newValue!;
      },
      items: <String>['Real', 'Dolar', 'Euro', 'BitCoin']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
                  )),
                  SizedBox(width: 30,),
                  Expanded(
                    flex: 2,
                    child: TextField(  
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue.shade400),
                          ),
                       
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue.shade400),
                        )
                      ),
                    ),
                  ),
                ],
              );
  }
}