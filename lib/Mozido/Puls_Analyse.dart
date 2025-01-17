import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'Puls_Messung/chart.dart';
import 'Puls_Messung/heart_bpm.dart';

class Puls_Analyse extends StatefulWidget {
  Puls_Analyse({required Key key}) : super(key: key);

  Puls_AnalyseState createState() => Puls_AnalyseState();
}

class Puls_AnalyseState extends State<Puls_Analyse> {
  List<SensorValue> data = [];
  List<SensorValue> bpmValues = [];
  //  Widget chart = BPMChart(data);

  bool isBPMEnabled = false;
  Widget? dialog;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF313237),

      ///
      /// Appbar
      ///
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
        backgroundColor: Color(0xFF313237),
        centerTitle: true,
        title: Text(
          "Puls Analyse",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Sans",
              fontSize: 17.0,
              fontWeight: FontWeight.w600),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
      ),

      body: Column(
        children: [
          isBPMEnabled
              ? dialog = HeartBPMDialog(
                  context: context,
                  onRawData: (value) {
                    setState(() {
                      if (data.length >= 100) data.removeAt(0);
                      data.add(value);
                    });
                    // chart = BPMChart(data);
                  },
                  onBPM: (value) => setState(() {
                    if (bpmValues.length >= 100) bpmValues.removeAt(0);
                    bpmValues.add(SensorValue(
                        value: value.toDouble(), time: DateTime.now()));
                  }),
                  // sampleDelay: 1000 ~/ 20,
                  // child: Container(
                  //   height: 50,
                  //   width: 100,
                  //   child: BPMChart(data),
                  // ),
                )
              : SizedBox(
                  height: 30,
                ),
          isBPMEnabled && data.isNotEmpty
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  height: 180,
                  child: BPMChart(data),
                )
              : SizedBox(),
          SizedBox(
            height: 10,
          ),
          isBPMEnabled && bpmValues.isNotEmpty
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlue,
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                      BoxShadow(
                        color: Colors.white,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                  ),
                  constraints: BoxConstraints.expand(height: 180),
                  child: BPMChart(bpmValues),
                )
              : SizedBox(
                  height: 30,
                ),
          Center(
            child: ElevatedButton.icon(
              icon: Icon(Icons.favorite_rounded),
              label:
                  Text(isBPMEnabled ? "Messung Anhalten" : "Puls Pro Minute"),
              onPressed: () => setState(() {
                if (isBPMEnabled) {
                  isBPMEnabled = false;
                  // dialog.
                } else
                  isBPMEnabled = true;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
