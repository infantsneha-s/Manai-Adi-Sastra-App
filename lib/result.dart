import 'package:flutter/material.dart';
import 'package:astro_app/main.dart';
import 'package:astro_app/listItem.dart';
class Result extends StatelessWidget {
  String numerator,rem1,denominator,rem2;
  int area,result1,result2,result3,result4,areaQ,areaR;
  Result(this.numerator,this.rem1,this.denominator,this.rem2,this.areaQ,this.areaR,this.result1,this.result2,this.result3,this.result4);
  @override
  Widget build(BuildContext context) {
    return Container(
      child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
        //             child: InteractiveViewer(
        //          //boundaryMargin: EdgeInsets.all(20.0),
        //  minScale: 0.1,
        // maxScale: 1.6,
        // // Zoom(
        // //   width: 500,
        // //   height: 500,
          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              //Expanded(
                              //child:
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 5, bottom: 5, top: 15),
                                //padding:EdgeInsets.all(10),
                                child: Text(
                                  'நீளம் :',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              //),
                              //Expanded(
                              //child:
                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 5, bottom: 5, top: 15),

                                child: Text(
                                  //decoration: InputDecoration(labelText: 'Feet'),
                                  // controller: TextEditingController(text: numerator),
                                  // onChanged: (val) {
                                  //   numerator = val;
                                  // },
                                  '$numerator அடி',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              //),
                              //Expanded(
                              //child:
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 5, bottom: 5, top: 15),
                                child: Text(
                                  // decoration: InputDecoration(labelText: 'Inch'),
                                  // controller: TextEditingController(text: rem1),
                                  // onChanged: (val) {
                                  //   rem1 = val;
                                  // },
                                  '$rem1 அங்குலம்',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              //),
                            ],
                          ),
                          Row(
                            children: [
                              //Expanded(
                              //child:
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 5, bottom: 5, top: 15),
                                child: Text(
                                  'அகலம் :',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              //),
                              //Expanded(
                              //child:
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 5, bottom: 5, top: 15),
                                child: Text(
                                  // decoration: InputDecoration(labelText: 'Feet'),
                                  // controller: TextEditingController(text: denominator),
                                  // onChanged: (val) {
                                  //   denominator = val;
                                  // },
                                  '$denominator அடி',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              //),
                              //Expanded(
                              //child:
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 5, bottom: 5, top: 15),
                                child: Text(
                                  // decoration: InputDecoration(labelText: 'Inch'),
                                  // controller: TextEditingController(text: rem2),
                                  // onChanged: (val) {
                                  //   rem2 = val;
                                  // },
                                  '$rem2 அங்குலம்',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              //),
                            ],
                          ),

                          // RaisedButton(
                          //   child: Text(
                          //     'Calculate',
                          //     style: TextStyle(fontSize: 20),
                          //   ),
                          //   onPressed: calculate,
                          // ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 5, bottom: 5, top: 15),
                                child: Text(
                                  'பரப்பளவு :',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 5, top: 15),
                                child: Text(
                                  '$areaQ சதுர அடி',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 5, top: 15),
                                child: Text(
                                  '$areaR சதுர அங்குலம்',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 5, bottom: 5, top: 15),
                                child: Text(
                                  'குழி :',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 5, top: 15),
                                child: Text(
                                  '$result1',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 5, bottom: 5, top: 15),
                                child: Text(
                                  'மீதி :',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              // Padding(
                              //   padding: EdgeInsets.only(
                              //       left: 10, right: 10, bottom: 5, top: 15),
                              //   child: Text(
                              //     '$remain1 அடி',
                              //     style: TextStyle(fontSize: 20),
                              //   ),
                              // ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 5, top: 15),
                                child: Text(
                                  '$result2 அங்குலம்',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 20, right: 5, bottom: 5, top: 15),
                                child: Text(
                                  'மூலைவிட்டம் :',
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 5, top: 15),
                                child: Text(
                                  '$result3 அடி',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, bottom: 5, top:15),
                                child: Text(
                                  '$result4 அங்குலம்',
                                  style: TextStyle(fontSize: 23),
                                ),
                              ),
                            ],
                          ),

                          ListItem(MyHomePageState.notes[0]['title'], MyHomePageState.results[0]),
                          ListItem(MyHomePageState.notes[1]['title'], MyHomePageState.results[1]),
                          ListItem(MyHomePageState.notes[2]['title'], MyHomePageState.results[2]),
                          ListItem(MyHomePageState.notes[3]['title'], MyHomePageState.results[3]),
                          ListItem(MyHomePageState.notes[4]['title'], MyHomePageState.results[4]),
                          ListItem(MyHomePageState.notes[5]['title'], MyHomePageState.results[5]),
                          ListItem(MyHomePageState.notes[6]['title'], MyHomePageState.results[6]),
                          ListItem(MyHomePageState.notes[7]['title'], MyHomePageState.results[7]),
                          ListItem(MyHomePageState.notes[8]['title'], MyHomePageState.results[8]),
                          ListItem(MyHomePageState.notes[9]['title'], MyHomePageState.results[9]),
                          ListItem(MyHomePageState.lastTitle1, MyHomePageState.results[10]),
                          ListItem(MyHomePageState.lastTitle2, MyHomePageState.results[11]),
                          ListItem(MyHomePageState.lastTitle3, MyHomePageState.results[12]),
                          // FloatingActionButton(
                          //   onPressed: reset,
                          //   child: Text('Reset'),
                          // ),
                          //RaisedButton(onPressed: reset, child: Text('Reset',style: TextStyle(fontSize: 20),),textColor: Colors.blue),
                        ]),
                  ),
               ),
    );
  }
}