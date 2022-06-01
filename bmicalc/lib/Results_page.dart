import 'package:bmicalc/Input_page.dart';
import 'package:bmicalc/constants.dart';
import 'package:bmicalc/reuse_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class Resultspage extends StatelessWidget {
  final String bmires;
  final String resulttxt;
  final String interpretation;

  Resultspage(
      {required this.bmires,
      required this.resulttxt,
      required this.interpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calc"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  "Your Results",
                  style: title_text_style,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Reusecard(
                colour: Color.fromARGB(255, 39, 24, 67),
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 150),
                        Text(
                          resulttxt.toUpperCase(),
                          style: Result_text_style,
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        bmires,
                        style: bmi_style,
                      ),
                    ),
                    Text(
                      interpretation,
                      style: text_style_out,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 60),
                    Container(
                      color: btm_cnt_col,
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: double.infinity,
                      height: btm_cnt_hei,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Text(
                              "Re-Calculate",
                              style: large_btn_style,
                            ),
                          )),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
