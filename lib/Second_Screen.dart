import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen(
      {super.key,
      required this.result,
      required this.textResult,
      required this.interpretation});

  final String result;
  final String textResult;
  final String interpretation;

/*  final String message;
  final int number;

  const SecondScreen({super.key, required this.message, required this.number});*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SECOND SCREEN"),
          /*style: TextStyle(color: Colors.pink, fontSize: 20.0))*/
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // by default expanded widget inside text will be aligned will be center.
            // Since the Text widget doesn't have any alignment specified within the Expanded, it will be centered by default.
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                child: const Text(
                  'Your Result',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.only(left: 5.0),
                height: double.infinity,
                decoration: BoxDecoration(
                    color: kInactiveCardColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(textResult,
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w900)),
                      Text(result, style: kNumberTextStyle),
                      Text(interpretation,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20.0)),
                    ]),
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                    color: kBottomSheetColor,
                    margin: const EdgeInsets.only(top: 10.0),
                    padding: const EdgeInsets.only(top: 10.0),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: BottomButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        name: 'RE-CALCULATE'))),
          ],
        ));
  }
}
