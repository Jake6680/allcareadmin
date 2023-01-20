import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: Text('자리 배치도')
      ),
      body: Container(
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
                      height: 70,
                    );
                  },
                ),),
              SizedBox(width: 10,),
              Container(width: 10,height: 700 , color: Colors.black,),
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
                      height: 60,
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
                      height: 70,
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
                      height: 70,
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
                      height: 70,
                      child: Center(
                        child: Column(
                          children: [
                            Icon(index < 3 ? Icons.edit : index < 7 ? Icons.calendar_today : Icons.question_mark, size: 40, color: Colors.white,),
                            Text('김OO', style: style.deskseatname,)
                          ],
                        ),
                      ),
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
                      return Container(
                        color: index == 1 ? Colors.white.withOpacity(0) : Color(0xff8977AD),
                        height: 70,
                        child: Column(
                          children: [
                            Icon(Icons.home, size: 40, color: Colors.white,),
                            Text('김OO', style: style.deskseatname,)
                          ],
                        ),
                      );
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
                    return Container(
                      color: index < 3 ? Colors.white.withOpacity(0) : Color(0xff8977AD),
                      height: 70,
                    );
                  },
                ),)
            ],
          )
      ),
    );
  }
}
