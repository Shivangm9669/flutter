import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatelessWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const bo = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 2.0,
        style: BorderStyle.solid,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.black,
              child: const Text(
                '0',
                style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: bo,
                    enabledBorder: bo),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
