// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'dart:ffi' as fi;

class CurrencyConvertorMaterialPagee extends StatefulWidget {
  const CurrencyConvertorMaterialPagee({super.key});

  @override
  State<CurrencyConvertorMaterialPagee> createState() =>
      _CurrencyConvertorMaterialPageestate();
}

class _CurrencyConvertorMaterialPageestate
    extends State<CurrencyConvertorMaterialPagee> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bo = OutlineInputBorder(
        borderSide: const BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(5));
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text('Currency Convertor'),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ('INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}'),
              style: const TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            TextField(
              style: const TextStyle(color: Colors.black),
              controller: textEditingController,
              decoration: InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: bo,
                  enabledBorder: bo),
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: convert,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text("Convert"),
            ),
          ],
        ),
      ),
    );
  }
}
