import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../style.dart' as style;


class SeatChart2 extends StatefulWidget {
  const SeatChart2({Key? key}) : super(key: key);

  @override
  State<SeatChart2> createState() => _SeatChart2State();
}

class _SeatChart2State extends State<SeatChart2> {
  List<double> widgetHeights = [];
  List<double> widgetColors = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        print('aa');
                      },
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),),
                      child: Icon(Icons.arrow_back, size: 30,),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        print('aa');
                      },
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),),
                      child: Icon(Icons.autorenew, size: 30,),
                    ),
                  ),
                ]
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('집',style: style.notgrey12,),
                      Icon(Icons.home, size: 30,),
                      Text(': 32명', style: style.black22)
                    ],
                  ),
                ),
                SizedBox(
                  width: 147,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('등원중',style: style.notgrey12,),
                      Icon(Icons.edit, size: 30,),
                      Text(': 32명', style: style.black22)
                    ],
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('외출',style: style.notgrey12,),
                      Icon(Icons.calendar_today, size: 30,),
                      Text(': 32명', style: style.black22)
                    ],
                  ),
                ),
                SizedBox(
                  width: 167,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('알수없음',style: style.notgrey12,),
                      Icon(Icons.question_mark, size: 30,),
                      Text(': 32명', style: style.black22)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 1,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        if (index == 5){
                          return Column(
                              children: [
                                Container(
                                color: Colors.white.withOpacity(0),
                                height: 20,),
                                BoxWidget(yHeight: 56, backColor: 0xff008D62, boxindex: index, boxplus: 0, oneline: true,)
                              ],
                          );
                        }else if (index == 10){
                          return Column(
                            children: [
                              Container(
                                color: Colors.white.withOpacity(0),
                                height: 40,),
                              BoxWidget(yHeight: 56, backColor: 0xff008D62, boxindex: index, boxplus: 0, oneline: true,)
                            ],
                          );
                        }else {
                          return BoxWidget(yHeight: 56, backColor: 0xff008D62, boxindex: index, boxplus: 0, oneline: true,);
                        }
                      },
                    ),),
                  SizedBox(width: 100,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        if (index == 0){
                          return Container(
                              color: Colors.white.withOpacity(0),
                              height: 63,
                          );
                        }else{
                          return BoxWidget(yHeight: 63, backColor: 0xff8977AD, boxindex: index, boxplus: 11, boxplusend: 9,);
                        }
                      },
                    ),),
                  SizedBox(width: 100,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        if (index == 0){
                          return Container(
                            color: Colors.white.withOpacity(0),
                            height: 63,
                          );
                        }else{
                          return BoxWidget(yHeight: 63, backColor: 0xff8977AD, boxindex: index, boxplus: 30, boxplusend: 9,);
                        }
                      },
                    ),),
                  SizedBox(width: 100,),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 1,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 13,
                      itemBuilder: (context, index) {
                        if (index == 5){
                          return Column(
                            children: [
                              Container(
                                color: Colors.white.withOpacity(0),
                                height: 8,),
                              BoxWidget(yHeight: 55, backColor: 0xff008D62, boxindex: index, boxplus: 50, oneline: true,)
                            ],
                          );
                        }else if(index == 11){
                          return Column(
                            children: [
                              Container(
                                color: Colors.white.withOpacity(0),
                                height: 8,),
                              BoxWidget(yHeight: 55, backColor: 0xff008D62, boxindex: index, boxplus: 50, oneline: true,)
                            ],
                          );
                        }else {
                          return BoxWidget(yHeight: 55, backColor: 0xff008D62, boxindex: index, boxplus: 50, oneline: true,);
                        }
                      },
                    ),),
                ],
              )
          ),
        ],
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({Key? key, this.yHeight,this.backColor, this.boxindex, this.boxplus, this.boxplusend, this.oneline}) : super(key: key);
  final backColor;
  final boxindex;
  final boxplus;
  final yHeight;
  final boxplusend;
  final oneline;

  @override
  Widget build(BuildContext context) {
    int boxnum = oneline == true ? boxindex + boxplus : boxindex.isEven ? boxindex - (boxindex ~/ 2) + boxplus : boxindex - (boxindex ~/ 2) + boxplus + boxplusend ;
    int intyHeight = int.parse(yHeight);
    return Container(
    color: Color(backColor),
    height: intyHeight,
    child: Stack(
        children: [
          Container(
              padding: EdgeInsets.all(1),
              child: Text('$boxnum', style: style.deskseatnameBlack,)
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(boxindex < 3 ? Icons.edit : boxindex < 7 ? Icons.calendar_today : Icons.question_mark, size: 40, color: Colors.white,),
                SizedBox(width: 10,),
                Text('OOO', style: style.deskseatname,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

