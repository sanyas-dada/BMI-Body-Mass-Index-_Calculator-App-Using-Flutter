import 'package:bmi_calcutor_flutter/Second_Screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'brain_calcultor.dart';
import 'child_widget.dart';
import 'reuseable_widget.dart';
import 'constants.dart';
import 'bottom_button.dart';

enum Gender {
  male,
  female,
  unknown,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPage();
}

class _InputPage extends State<InputPage> {
  late Gender selectedGender;
  late int height = 150;
  late int weightNumber = 40;
  late int ageNumber = 15;
  late BrainCalculator bc =  BrainCalculator(height: height, weight: weightNumber);

  @override
  void initState() {
    super.initState();
    // Initialize the selectedGender variable with a default value other than male or female

    selectedGender = Gender.unknown;
  }

  /*Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;



  // there is no change in card color kanchha , let's think deeper way that is a great chance to improve my logical thinking capacity,
  // i am always waiting for that moment and exicted as well.

  colorUpdateChange(Gender gender) {
    // male card pressed
    if (gender == Gender.male) {

      maleCardColor == inactiveCardColor ? cardActiveColorWhilePressing: inactiveCardColor;
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = cardActiveColorWhilePressing;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    // female card pressed
    if (gender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
         femaleCardColor = cardActiveColorWhilePressing;
         maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      //backgroundColor: Colors.lime, it uses if we want to change the specific scaffoldbodybackground color
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // no matter how many child of it column , it streches as full width
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableWidget(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kCardActiveColorWhilePressing
                          : kInactiveCardColor,
                      childWidget: const ChildWidget(
                          icon: FontAwesomeIcons.mars, label: 'MALE')),
                ),
                Expanded(
                    child: ReusableWidget(
                        onPressed: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colour: selectedGender == Gender.female
                            ? kCardActiveColorWhilePressing
                            : kInactiveCardColor,
                        childWidget: const ChildWidget(
                            icon: FontAwesomeIcons.venus, label: 'FEMALE'))),
              ],
            ),
          ),
          Expanded(
              child: ReusableWidget(
            onPressed: () {
              setState(() {
                selectedGender = Gender.male;
              });
            },
            colour: kInactiveCardColor,
            childWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('HEIGHT', style: kTextStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(height.toString(), style: kNumberTextStyle),
                    const Text('cm', style: kTextStyle),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.brown,
                    thumbColor: Colors.red,
                    overlayColor: Colors.black38,
                    thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 20.0, pressedElevation: 7.0),
                    overlayShape:
                        const RoundSliderOverlayShape(overlayRadius: 30),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.toInt();
                      });
                    },
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableWidget(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.unknown;
                        });
                      },
                      colour: kInactiveCardColor,
                      childWidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('WEIGHT', style: kTextStyle),
                          Text(weightNumber.toString(),
                              style: kNumberTextStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomFloatingActionButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weightNumber--;
                                  });
                                },
                              ),
                              const SizedBox(width: 10.0),
                              CustomFloatingActionButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weightNumber++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: ReusableWidget(
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.unknown;
                      });
                    },
                    colour: kInactiveCardColor,
                    childWidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('AGE', style: kTextStyle),
                        Text(ageNumber.toString(), style: kNumberTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomFloatingActionButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    ageNumber--;
                                  });
                                }),
                            const SizedBox(width: 10.0),
                            CustomFloatingActionButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    ageNumber++;
                                  });
                                }),
                            /*GestureDetector(
                              onTap: () {
                                setState(() {
                                  ageNumber++;
                                });
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  ageNumber--;
                                });
                              },
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  FontAwesomeIcons.minus,
                                  color: Colors.black,
                                  size: 30.0,
                                ),
                              ),
                            ),*/
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              color: kBottomSheetColor,
              margin: const EdgeInsets.only(top: 10.0),
              padding: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomSheetHeight,
              child: BottomButton(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                             SecondScreen(result:bc.calculateBMI(), textResult: bc.getResult(), interpretation: bc.getInterpretation())));
                  },
                  name: 'CALCULATE'))
        ],
      ),

      /* floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),*/
    );
  }
}


// i am going to create a custom floating action button so that I can use anywhere I want that is the trick of  custom method
class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: Colors.white,
      child: Icon(icon),
    );
  }
}

//GestureDetector(
//behavior: HitTestBehavior.opaque,
//onTap:
//});
//},

// my logic to build circular shape inside icon
/*GestureDetector(
onTap: () {
setState(() {
weightNumber++;
});
},
child: Container(
width: 50.0,
height: 50.0,
decoration: const BoxDecoration(
color: Colors.white,
shape: BoxShape.circle,
),
child: const Icon(
FontAwesomeIcons.plus,
color: Colors.black,
size: 30.0,
),
),
),
const SizedBox(
width: 20.0,
),
GestureDetector(
onTap: () {
setState(() {
weightNumber--;
});
},
child: Container(
width: 50.0,
height: 50.0,
decoration: const BoxDecoration(
color: Colors.white,
shape: BoxShape.circle,
),
child: const Icon(
FontAwesomeIcons.minus,
color: Colors.black,
size: 30.0,
),
),
)*/
