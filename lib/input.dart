import 'package:flutter/material.dart';
import 'package:astro_app/main.dart';
class Input extends StatelessWidget {

  TextEditingController controller1=TextEditingController(text: "0");
  TextEditingController controller2=TextEditingController(text: "0");
  TextEditingController controller3=TextEditingController(text: "0");
  TextEditingController controller4=TextEditingController(text: "0");
  Function calculate;
  List<String> array = new List<String>(4);

  Input(this.calculate);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:SingleChildScrollView(
                child:Column(
                  children: [
                    Row(
                      children: [
                        //Expanded(
                        //child:
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'நீளம் :',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        // ),
                        Expanded(
                          child: Padding(
                            //padding: EdgeInsets.only(bottom:10,left:30,top:10),
                            padding:EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(labelText: 'அடி'),
                              controller: controller1,
                              keyboardType: TextInputType.number,
                              onChanged: (val) {
                                MyHomePageState.numerator = val;
                              },
                              onTap: controller1.clear,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            //padding: EdgeInsets.only(left:20,top:10,bottom:10,right:10),
                            padding:EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(labelText: 'அங்குலம்'),
                              controller: controller2,
                              keyboardType: TextInputType.number,
                              onChanged: (val) {
                                MyHomePageState.rem1 = val;
                              },
                              onTap: controller2.clear,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        //Expanded(
                        //child:
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'அகலம் :',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                        ),
                        //),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(labelText: 'அடி'),
                              controller: controller3,
                              keyboardType: TextInputType.number,
                              onChanged: (val) {
                                MyHomePageState.denominator = val;
                              },
                              onTap: controller3.clear,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(labelText: 'அங்குலம்'),
                              controller: controller4,
                              keyboardType: TextInputType.number,
                              onChanged: (val) {
                                MyHomePageState.rem2 = val;
                              },
                              onTap: controller4.clear,
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child:RaisedButton(
                      child: Text(
                        'கணக்கிடு',
                        style: TextStyle(fontSize: 23),
                      ),
                      onPressed: calculate,
                    ),
                    ),
                  ],
              )),
    );
  }
}