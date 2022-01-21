import 'package:flutter/material.dart';

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
      appBar: AppBar(
        title: Text('Heart BPM Demo'),
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
              : SizedBox(),
          isBPMEnabled && data.isNotEmpty
              ? Container(
                  decoration: BoxDecoration(border: Border.all()),
                  height: 180,
                  child: BPMChart(data),
                )
              : SizedBox(),
          isBPMEnabled && bpmValues.isNotEmpty
              ? Container(
                  decoration: BoxDecoration(border: Border.all()),
                  constraints: BoxConstraints.expand(height: 180),
                  child: BPMChart(bpmValues),
                )
              : SizedBox(),
          Center(
            child: ElevatedButton.icon(
              icon: Icon(Icons.favorite_rounded),
              label: Text(isBPMEnabled ? "Stop measurement" : "Measure BPM"),
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







//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       backgroundColor: Color(0xFF313237),

//       ///
//       /// Appbar
//       ///
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         backgroundColor: Color(0xFF313237),
//         centerTitle: true,
//         title: Text(
//           "Puls Übungen",
//           style: TextStyle(
//               color: Colors.white,
//               fontFamily: "Sans",
//               fontSize: 17.0,
//               fontWeight: FontWeight.w600),
//         ),
//         iconTheme: IconThemeData(color: Colors.white),
//         elevation: 15.0,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             _card(Icons.air, "Puls Messung",

//                 "Messen Sie hier ihren direkt ihren Puls "),
//             _card(Icons.favorite, "Puls Empfehlung",
//                 "Ihr Puls sollte gewissen Bereiche nicht überschreiten "),
//           ],

//         ),
//       ),
//     );

//   }
//   Widget _card(IconData _icon, String _title, String _desc) {
//     return Padding(
//       padding: const EdgeInsets.only(
//           top: 100.0, left: 50, right: 80, bottom: 50),
//       child: InkWell(
//         onTap: () {
        
//         },
//         child: Container(
//           width: double.infinity,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(100.0)),
//               color: Color(0xFF363940),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black12,
//                   blurRadius: 50.0,
//                   spreadRadius: 23.0,
//                 )
//               ]),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[

//               Padding(
//                 padding: const EdgeInsets.only(top: 65.0),
//                 child: Icon(
//                   _icon,
//                   color: Colors.white54,
//                   size: 30.0,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 25.0),
//                 child: Container(
//                   width: 250.0,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       Text(
//                         _title,
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontFamily: "Sans",
//                             fontWeight: FontWeight.w800,
//                             fontSize: 16.5),
//                       ),

//                       Padding(
//                         padding: const EdgeInsets.only(top: 20.0, right: 15.0),
//                         child: Text(
//                           _desc,
//                           style: TextStyle(
//                               color: Colors.white54,
//                               fontFamily: "Popins",
//                               fontSize: 13.5),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
