import 'package:bmicalc/Results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_cont.dart';
import 'reuse_card.dart';
import 'constants.dart';
import 'Results_page.dart';
import 'Calcbrain.dart';

enum Gender { male, female }

class Inputpage extends StatefulWidget {
  Inputpage({Key? key}) : super(key: key);

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
  Color malecardcol = inactcardcol;
  Color femalecardcol = inactcardcol;

  void updatecol(Gender gen) {
    if (gen == Gender.male) {
      if (malecardcol == inactcardcol) {
        malecardcol = btm_cnt_col;
        femalecardcol = inactcardcol;
      } else {
        malecardcol = inactcardcol;
      }
    }
    if (gen == Gender.female) {
      if (femalecardcol == inactcardcol) {
        femalecardcol = btm_cnt_col;
        malecardcol = inactcardcol;
      } else {
        femalecardcol = inactcardcol;
      }
    }
  }

  int height = 180;
  int weight = 60;
  int age = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI calc"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updatecol(Gender.male);
                    });
                  },
                  child: Reusecard(
                    colour: malecardcol,
                    cardchild: IconCont(
                      icondat: FontAwesomeIcons.mars,
                      iconlabel: "Male",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updatecol(Gender.female);
                    });
                  },
                  child: Reusecard(
                    colour: femalecardcol,
                    cardchild: IconCont(
                      icondat: FontAwesomeIcons.venus,
                      iconlabel: "female",
                    ),
                  ),
                ),
              )
            ],
          )),
          Expanded(
            child: Reusecard(
              colour: widcol,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: labeltextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: numtextstyle),
                      Text(
                        "cm",
                        style: labeltextstyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: Color(0xFFEB1555),
                      onChanged: (double newval) {
                        setState(() {
                          height = newval.toInt();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reusecard(
                    colour: widcol,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: labeltextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numtextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Round_icon_but(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  weight = weight - 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Round_icon_but(
                                icon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    weight = weight + 1;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reusecard(
                    colour: widcol,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Age",
                          style: labeltextstyle,
                        ),
                        Text(age.toString(), style: numtextstyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Round_icon_but(
                                icon: FontAwesomeIcons.minus,
                                onpressed: () {
                                  setState(() {
                                    age = age - 1;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            Round_icon_but(
                                icon: FontAwesomeIcons.plus,
                                onpressed: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: btm_cnt_col,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            width: double.infinity,
            height: btm_cnt_hei,
            child: GestureDetector(
                onTap: () {
                  Calcbrain calbri = Calcbrain(height, weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Resultspage(
                                bmires: calbri.clacBMI(),
                                resulttxt: calbri.getResult(),
                                interpretation: calbri.interpretation(),
                              )));
                },
                child: Center(
                  child: Text(
                    "Calculate",
                    style: large_btn_style,
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class Round_icon_but extends StatelessWidget {
  final IconData? icon;
  final VoidCallback onpressed;
  Round_icon_but({required this.icon, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.00,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color.fromARGB(255, 93, 89, 89),
      onPressed: onpressed,
    );
  }
}
