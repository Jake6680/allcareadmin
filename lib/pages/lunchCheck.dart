import 'package:flutter/material.dart';


class LunchUI extends StatelessWidget {
  const LunchUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(child: Container(color: Colors.black,width: 40,)),
          Flexible(child: Container(color: Colors.grey,width: 40,))
        ],
      ),
    );
  }
}
