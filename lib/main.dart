import 'package:flutter/material.dart';
import 'package:animated_overflow/animated_overflow.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:allcare/firebase_options.dart';
import 'package:flutter/services.dart';

import './style.dart' as style;
import 'package:allcare/pages/seatChart_1.dart';
import 'package:allcare/pages/seatChart_2.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: style.theme,
        initialRoute: '/',
        routes: {
          '/' : (context) => MyApp(),
          '/seat_1' : (context) => SeatChart(),
          '/seat_2' : (context) => SeatChart2(),
        },
      )
  );
}


class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var buttonName = ['1관 자리 배치도', '2관 자리 배치도', '급식신청 현황', '공지사항 작성', '체크리스트', '재고확인'];

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          title: Row(
            children: [
              Image.asset('assets/Logo.png', width: 80),
              Text('관리자 전용앱'),
            ],
          ),
        ),
      ),

      body: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
        color: Color(0xffefefef),
        child: ListView.builder(
            itemCount: buttonName.length + 1,
            itemBuilder: (c, i){
              if (i == 0) return NoticeAlert();
              return ListTile(
                title: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 25),
                  height: 57,
                  child: ElevatedButton(
                    onPressed: (){
                      if (buttonName[i - 1] == '1관 자리 배치도'){
                        Navigator.pushNamed(context, '/seat_1');
                      }else if (buttonName[i - 1] == '2관 자리 배치도'){
                        Navigator.pushNamed(context, '/seat_2');
                      }
                    },
                    child: Text(buttonName[i - 1], style: style.normalText,),
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}


class NoticeAlert extends StatelessWidget {
  const NoticeAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(
                width: 2,
                color: Colors.black
            ),
            borderRadius: BorderRadius.circular(15),
            color: Color(0xffffffff)
        ),
        child: Row(
          children: [
            Container(margin: EdgeInsets.fromLTRB(7, 0, 5, 0) , child: Row(
              children: [
                Icon(Icons.alarm, size: 30),
                Text('14:00',style: style.black22,)
              ],
            )),
            AnimatedOverflow(
              animatedOverflowDirection: AnimatedOverflowDirection.HORIZONTAL,
              maxWidth: width1 / 1.5,
              padding: 0,
              speed: 70.0,
              child: Text(
                "출석체크 부탁드립니다.",
                style: style.speakerText,
                maxLines: 1,
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class AlertIconUI extends StatelessWidget {
  const AlertIconUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.topRight,
      margin: EdgeInsets.only(top: 5),
      child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffc32c37),
              border: Border.all(color: Color(0xff0B01A2), width: 1)),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Center(
              child: Text('N', style: style.noticeIconText,),
            ),
          )
      ),
    );
  }
}




