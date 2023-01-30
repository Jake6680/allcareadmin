import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

import '../style.dart' as style;
import '../controller/maincontroller.dart';


class SeatChart extends StatefulWidget {
  const SeatChart({Key? key}) : super(key: key);

  @override
  State<SeatChart> createState() => _SeatChartState();
}

class _SeatChartState extends State<SeatChart> {
  List<double> widgetHeights = [];
  List<double> widgetColors = [];
  Map fireListData = {}.obs;


  @override
  void initState() {
    super.initState();
    initLineData();
  }

  void initLineData() async{
    final refGet = FirebaseDatabase.instance.ref().child('attendance/1');
    final snapshot = await refGet.get();
    if (snapshot.exists) {
      fireListData = (snapshot.value as dynamic);
      for (String leaveEarlyA in fireListData.keys){
        print(leaveEarlyA);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.put(FirstSeatController());
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
                    child: GestureDetector(
                      onLongPress: (){
                        showDialog(context: context, builder: (context) => ClickList(backColor : 0xff8977AD, itemCount : 7, startCount : 59, hangCount : 2));
                      },
                      child: MasonryGridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemCount: 14,
                        itemBuilder: (context, index) {
                          return BoxWidget(yHeight: 96, backColor: 0xff8977AD, boxindex: index, boxplus: 59, boxplusend: 6,);
                        },
                      ),
                    ),),
                  SizedBox(width: 10,),
                  Container(width: 10,height: 1000 , color: Colors.black,),
                  SizedBox(width: 10,),
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onLongPress: (){
                        showDialog(context: context, builder: (context) => ClickList(backColor : 0xff008D62, itemCount : 10, startCount : 53, hangCount : 1));
                      },
                      child: MasonryGridView.count(
                        crossAxisCount: 1,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return BoxWidget(yHeight: 74, backColor: 0xff008D62, boxindex: index, boxplus: 53, oneline: true,);
                        },
                      ),
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onLongPress: (){
                        showDialog(context: context, builder: (context) => ClickList(backColor : 0xff8977AD, itemCount : 6, startCount : 11, hangCount : 2));
                      },
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height - 80,
                          child: MasonryGridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return BoxWidget(yHeight: 96, backColor: 0xff8977AD, boxindex: index, boxplus: 11, boxplusend: 5,);
                            },
                          ),
                        ),
                      ),
                    ),),
                  SizedBox(width: 30),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onLongPress: (){
                        showDialog(context: context, builder: (context) => ClickList(backColor : 0xff8977AD, itemCount : 7, startCount : 23, hangCount : 3));
                      },
                      child: MasonryGridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemCount: 13,
                        itemBuilder: (context, index) {
                          return BoxWidget(yHeight: 96, backColor: 0xff8977AD, boxindex: index, boxplus: 23, boxplusend: 6,);
                        },
                      ),
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onLongPress: (){
                        showDialog(context: context, builder: (context) => ClickList(backColor : 0xff8977AD, itemCount : 7, startCount : 36, hangCount : 3));
                      },
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height - 80,
                          child: MasonryGridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            itemCount: 13,
                            itemBuilder: (context, index) {
                              return BoxWidget(yHeight: 96, backColor: 0xff8977AD, boxindex: index, boxplus: 36, boxplusend: 6,);
                            },
                          ),
                        ),
                      ),
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onLongPress: (){
                        showDialog(context: context, builder: (context) => ClickList(backColor : 0xff8977AD, itemCount : 4, startCount : 49, hangCount : 4));
                      },
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
                            return BoxWidget(yHeight: 96, backColor: 0xff8977AD, boxindex: index, boxplus: 49, boxplusend: 2,);
                          }
                        },
                      ),
                    ),),
                  SizedBox(width: 30,),
                  Flexible(
                    fit: FlexFit.tight,
                    child: GestureDetector(
                      onLongPress: (){
                        showDialog(context: context, builder: (context) => ClickList(backColor : 0xff8977AD, itemCount : 3, startCount : 56, hangCount : 1));
                      },
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
                            return BoxWidget(yHeight: 96, backColor: 0xff8977AD, boxindex: index, boxplus: 53, oneline: true,);
                          }
                        },
                      ),
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
  const BoxWidget({Key? key, this.yHeight, this.backColor, this.boxindex, this.boxplus, this.boxplusend, this.oneline}) : super(key: key);
  final backColor;
  final boxindex;
  final boxplus;
  final yHeight;
  final boxplusend;
  final oneline;

  @override
  Widget build(BuildContext context) {
    int boxnum = oneline == true ? boxindex + boxplus : boxindex.isEven ? boxindex - (boxindex ~/ 2) + boxplus : boxindex - (boxindex ~/ 2) + boxplus + boxplusend ;
    return InkWell(
      onTap: () => showDialog(context: context, builder: (context) => PresonSettingUI(personNum : '$boxnum')),
      child: Container(
        color: Color(backColor),
        height: yHeight == 96 ? 96 : yHeight == 74 ? 74 : 59,
        child: Stack(
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
        ),
      ),
    );
  }
}

class ClickList extends StatelessWidget {
  const ClickList({Key? key, this.backColor, this.itemCount, this.startCount, this.hangCount}) : super(key: key);
  final itemCount;
  final backColor;
  final startCount;
  final hangCount;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: EdgeInsets.zero,
      title: SizedBox(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 60,),
            Text(hangCount == 1 ? '$startCount~${startCount + itemCount - 1}' : '$startCount~${startCount + (itemCount * 2) - int.parse('${hangCount == 3 || hangCount == 4 ? 2 : 1}')}',style: style.black20, textAlign: TextAlign.center,),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.clear, size: 30,), color: Colors.black,)
          ],
        ),
      ),
      content: SizedBox(
        width: hangCount != 1 ? 600 : 300,
        child: ListView.builder(
          itemCount: itemCount,
          itemBuilder: (_, i) {
            if (hangCount != 1){
                return Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, itemCount - 1 == i ? 0 : 30),
                            height: 70,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(backColor),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: (){
                                showDialog(context: context, builder: (context) => PresonSettingUI(personNum : '${startCount+i}'));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('${startCount + i}',style: style.deskseatname,),
                                  Icon(Icons.edit, size: 30,),
                                  Text('OOO', style: style.deskseatname,)
                                ],
                              ),
                            )
                        )
                    ),
                    Flexible(
                        fit: FlexFit.tight,
                        child: i == 6 && hangCount == 3 ? Container(height: 70,)
                            : i == 0 && hangCount == 4 ? Container(height: 70, margin: EdgeInsets.fromLTRB(0, 0, 0, 30),)
                            : Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, itemCount - 1 == i ? 0 : 30),
                            height: 70,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(backColor),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                              onPressed: (){
                                showDialog(context: context, builder: (context) => PresonSettingUI(personNum : hangCount == 4 ? '${startCount + i + itemCount - 1}' : '${startCount + i + itemCount}'));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(hangCount == 4 ? '${startCount + i + itemCount - 1}' : '${startCount + i + itemCount}',style: style.deskseatname,),
                                  Icon(Icons.edit, size: 30,),
                                  Text('OOO', style: style.deskseatname,)
                                ],
                              ),
                            )
                        )
                    ),
                  ],
                );
            }else{
              return Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, itemCount - 1 == i ? 0 : 30),
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(backColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: (){
                      showDialog(context: context, builder: (context) => PresonSettingUI(personNum : '${startCount + i}'));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('${startCount + i}',style: style.deskseatname,),
                        Icon(Icons.edit, size: 30,),
                        Text('OOO', style: style.deskseatname,)
                      ],
                    ),
                  )
              );
            }
          },
        ),
      ),
    );
  }
}

class PresonSettingUI extends StatelessWidget {
  const PresonSettingUI({Key? key, this.personNum}) : super(key: key);
  final personNum;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))
      ),
      title: SizedBox(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 60,),
            Text('$personNum번 OOO',style: style.black22,),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.clear, size: 30,), color: Colors.black,)
          ],
        ),
      ),
      content: Row(
        children: [
          SizedBox(
              width: 140,
              height: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shadowColor: Colors.green,
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.check_circle_outline, size: 40,color: Colors.white,),
                    SizedBox(height: 10,),
                    Text('자리에 있음', style: style.white17,),
                  ],
                ),
              )
          ),
          SizedBox(width: 20,),
          SizedBox(
              width: 140,
              height: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shadowColor: Colors.red,
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.not_listed_location, size: 40,color: Colors.white,),
                    SizedBox(height: 10,),
                    Text('자리에 없음', style: style.white17,),
                  ],
                ),
              )
          ),
          SizedBox(width: 20,),
          SizedBox(
              width: 140,
              height: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Color(0xff0B01A2),
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: (){
                  },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.calendar_month, size: 40,color: Colors.white,),
                    SizedBox(height: 10,),
                    Text('학원 일정', style: style.white17,),
                  ],
                ),
              )
          ),
          SizedBox(width: 20,),
          SizedBox(
              width: 140,
              height: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Color(0xff0B01A2),
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: (){
                  Navigator.pop(context);
                  showDialog(context: context, builder: (context) => SubPersonSetting(personNum : personNum));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.settings, size: 40,color: Colors.white,),
                    SizedBox(height: 10,),
                    Text('부가 설정', style: style.white17,),
                  ],
                ),
              )
          ),
          SizedBox(width: 20,),
          SizedBox(
              width: 140,
              height: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Color(0xff0B01A2),
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.assignment, size: 40,color: Colors.white,),
                    SizedBox(height: 10,),
                    Text('사유', style: style.white17,),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}

class SubPersonSetting extends StatelessWidget {
  const SubPersonSetting({Key? key, this.personNum}) : super(key: key);
  final personNum;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))
      ),
      title: SizedBox(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 60,),
            Text('$personNum번 OOO',style: style.black22,),
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.clear, size: 30,), color: Colors.black,)
          ],
        ),
      ),
      content: Row(
        children: [
          SizedBox(
              width: 140,
              height: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Color(0xff0B01A2),
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: (){
                  print(FirstSeatController.to.adminCode);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.build, size: 40,color: Colors.white,),
                    SizedBox(height: 10,),
                    Text('비밀번호 찾기', style: style.white17,),
                  ],
                ),
              )
          ),
          SizedBox(width: 20,),
          SizedBox(
              width: 140,
              height: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Color(0xff0B01A2),
                  elevation: 14,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                onPressed: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.delete, size: 40,color: Colors.white,),
                    SizedBox(height: 10,),
                    Text('회원탈퇴', style: style.white17,),
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}




