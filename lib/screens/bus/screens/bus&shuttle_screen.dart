import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class BusOrShuttle extends StatefulWidget {
  const BusOrShuttle({super.key});

  @override
  State<BusOrShuttle> createState() => _BusOrShuttleState();
}

class _BusOrShuttleState extends State<BusOrShuttle> {
  @override
  Widget build(BuildContext context) {
    Color backColor = const Color.fromARGB(255, 255, 125, 255);
    Color BusRColor = const Color.fromARGB(255, 239, 208, 85);
    Color BusLColor = const Color.fromARGB(255, 72, 241, 144);
    Color ShuttleColor = const Color.fromARGB(255, 71, 169, 234);

    Padding pd50 = const Padding(padding: EdgeInsets.only(top: 50));
    Padding pd30 = const Padding(padding: EdgeInsets.only(top: 30));

    // 강터 방향 버스 버튼
    Widget BusRButton() {
      return SizedBox(
        width: 280,
        height: 50,
        child: ElevatedButton.icon(
          onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => deliver_west()));
          },
          icon: const Icon(Icons.arrow_right_sharp),
          style: ElevatedButton.styleFrom(
            primary: BusRColor,
            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          label: Row(
            children: [
              Expanded(
                child: Text(
                  '버스 (강터 방향)',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      );
    }

    // 강터 방향 버스 버튼
    Widget BusLButton() {
      return SizedBox(
        width: 280,
        height: 50,
        child: ElevatedButton.icon(
          onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => deliver_west()));
          },
          icon: const Icon(Icons.arrow_left_sharp),
          style: ElevatedButton.styleFrom(
            primary: BusLColor,
            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          label: Row(
            children: [
              Expanded(
                child: Text(
                  '버스 (초지대교 방향)',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      );
    }

    // 강터 방향 버스 버튼
    Widget ShuttleButton() {
      return SizedBox(
        width: 280,
        height: 50,
        child: ElevatedButton.icon(
          onPressed: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => deliver_west()));
          },
          icon: Image.asset(
            'images/bus.png',
          ),
          style: ElevatedButton.styleFrom(
            primary: ShuttleColor,
            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          label: Row(
            children: [
              Expanded(
                child: Text(
                  '셔틀 버스',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("오늘은 뭘 탈까?"),
        backgroundColor: backColor,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 15,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              pd30,
              BusRButton(),
              pd50,
              BusLButton(),
              pd50,
              ShuttleButton(),
            ],
          ),
        ),
      ),
    );
  }
}
