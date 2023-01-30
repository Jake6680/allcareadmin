import 'package:flutter/material.dart';



var theme = ThemeData(

  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff0B01A2)
      )
  ),

  appBarTheme: AppBarTheme(
      color: Color(0xff0B01A2),
      titleTextStyle: TextStyle( fontWeight: FontWeight.w600, fontSize: 22, color: Colors.white  )
  ),

);

const barText = TextStyle(color:Color(0xffffffff), fontWeight: FontWeight.w500);
const normalText = TextStyle(color:Color(0xffffffff), fontSize: 20, fontWeight: FontWeight.w600 );
const deskseatname = TextStyle(color:Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.w600 );
const deskseatnameBlack = TextStyle(color:Color(0xffffffff), fontSize: 13 );
const normalTextDark = TextStyle(color:Color(0xff000000), fontSize: 20, fontWeight: FontWeight.w600 );
const floatingText = TextStyle(fontSize: 15, fontWeight: FontWeight.w600);
const letterMainText = TextStyle( fontSize: 18, fontWeight: FontWeight.w400 );
const dialogCheckButton = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)));
const dialogCheckText = TextStyle(fontSize: 17, fontWeight: FontWeight.w600);
const speakerText = TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold);
const noticeIconText = TextStyle(fontSize: 10,fontWeight: FontWeight.w600);
const black22 = TextStyle(fontSize: 22,color: Colors.black, fontWeight: FontWeight.w600);
const black20 = TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.w600);
const white20 = TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.w600);
const white17 = TextStyle(fontSize: 17,color: Colors.white, fontWeight: FontWeight.w600);
const notgrey12 = TextStyle(fontSize: 13,color: Colors.grey, fontWeight: FontWeight.w600);
