import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../style.dart' as style;


class SeatChart extends StatefulWidget {
  const SeatChart({Key? key}) : super(key: key);

  @override
  State<SeatChart> createState() => _SeatChartState();
}

class _SeatChartState extends State<SeatChart> {
  List<double> widgetHeights = [];
  List<double> widgetColors = [];


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 400,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),),
                        child: Icon(Icons.autorenew, size: 30,),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),),
                        child: Icon(Icons.arrow_back, size: 30,),
                      ),
                    ),
                    SizedBox(height: 10,),
                  ],
                ),
                SizedBox(width: 400,),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('집',style: style.notgrey12,),
                    Icon(Icons.home, size: 30,),
                    Text(': 32명', style: style.black22)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('등원중',style: style.notgrey12,),
                    Icon(Icons.edit, size: 30,),
                    Text(': 32명', style: style.black22)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('외출',style: style.notgrey12,),
                    Icon(Icons.calendar_today, size: 30,),
                    Text(': 32명', style: style.black22)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('알수없음',style: style.notgrey12,),
                    Icon(Icons.question_mark, size: 30,),
                    Text(': 32명', style: style.black22)
                  ],
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
                    flex: 2,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 14,
                      itemBuilder: (context, index) {
                        return Container(
                            color: Color(0xff8977AD),
                            height: 96,
                            child: BoxWidget( boxindex: index, boxplus: 59, boxplusend: 6,)
                        );
                      },
                    ),),
                  SizedBox(width: 10,),
                  Container(width: 10,height: 1000 , color: Colors.black,),
                  SizedBox(width: 10,),
                  Flexible(
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 1,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                            color: Color(0xff008D62),
                            height: 74,
                            child: BoxWidget( boxindex: index, boxplus: 1, oneline: true,)
                        );
                      },
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return Container(
                            color: Color(0xff8977AD),
                            height: 96,
                            child: BoxWidget( boxindex: index, boxplus: 11, boxplusend: 5,)
                        );
                      },
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 13,
                      itemBuilder: (context, index) {
                        return Container(
                            color: Color(0xff8977AD),
                            height: 96,
                            child: BoxWidget( boxindex: index, boxplus: 23, boxplusend: 6,)
                        );
                      },
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 13,
                      itemBuilder: (context, index) {
                        return Container(
                            color: Color(0xff8977AD),
                            height: 96,
                            child: BoxWidget( boxindex: index, boxplus: 36, boxplusend: 6,)
                        );
                      },
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        if (index == 1){
                          return Container(
                            color: Colors.white.withOpacity(0),
                            height: 96,
                          );
                        }else {
                          return Container(
                              color: Color(0xff8977AD),
                              height: 96,
                              child: BoxWidget( boxindex: index, boxplus: 49, boxplusend: 2,)
                          );
                        }
                      },
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    fit: FlexFit.tight,
                    child: MasonryGridView.count(
                      crossAxisCount: 1,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        if (index < 3){
                          return Container(
                            color: Colors.white.withOpacity(0),
                            height: 96,
                          );
                        }else{
                          return Container(
                              color: Color(0xff8977AD),
                              height: 96,
                              child: BoxWidget( boxindex: index, boxplus: 53, oneline: true,)
                          );
                        }

                      },
                    ),)
                ],
              )
          ),
        ],
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({Key? key, this.boxindex, this.boxplus, this.boxplusend, this.oneline}) : super(key: key);
  final boxindex;
  final boxplus;
  final boxplusend;
  final oneline;

  @override
  Widget build(BuildContext context) {
    int boxnum = oneline == true ? boxindex + boxplus : boxindex.isEven ? boxindex - (boxindex ~/ 2) + boxplus : boxindex - (boxindex ~/ 2) + boxplus + boxplusend ;
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.all(1),
            child: Text('$boxnum', style: style.deskseatnameBlack,)
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(boxindex < 3 ? Icons.edit : boxindex < 7 ? Icons.calendar_today : Icons.question_mark, size: 40, color: Colors.white,),
              Text('OOO', style: style.deskseatname,)
            ],
          ),
        ),
      ],
    );
  }
}

