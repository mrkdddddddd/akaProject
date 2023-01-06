import 'package:flutter/material.dart';

class ShuttleList extends StatefulWidget {
  const ShuttleList({super.key});

  @override
  State<ShuttleList> createState() => _ShuttleListState();
}

class _ShuttleListState extends State<ShuttleList> {
  @override
  Widget build(BuildContext context) {
    Color backColor = const Color.fromARGB(255, 71, 169, 234);
    Color Color1 = const Color.fromARGB(255, 241, 118, 105);
    Color Color2 = const Color.fromARGB(255, 239, 172, 113);
    Color Color3 = const Color.fromARGB(255, 239, 208, 85);
    Color Color4 = const Color.fromARGB(255, 72, 241, 144);

    Padding pd50 = const Padding(padding: EdgeInsets.only(top: 50));
    Padding pd30 = const Padding(padding: EdgeInsets.only(top: 30));

    // 신도림 버튼
    Widget ShindorimButton() {
      return SizedBox(
        width: 280,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => deliver_korean()));
          },
          style: ElevatedButton.styleFrom(
            primary: Color1,
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: const Text(
            '신도림 셔틀',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    // 일산 버튼
    Widget IlsanButton() {
      return SizedBox(
        width: 280,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => deliver_korean()));
          },
          style: ElevatedButton.styleFrom(
            primary: Color2,
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: const Text(
            '일산 셔틀',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    // 부평 버튼
    Widget BupyeongButton() {
      return SizedBox(
        width: 280,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => deliver_korean()));
          },
          style: ElevatedButton.styleFrom(
            primary: Color3,
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: const Text(
            '부평 셔틀',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    // 문학 버튼
    Widget MunhakButton() {
      return SizedBox(
        width: 280,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            // Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => deliver_korean()));
          },
          style: ElevatedButton.styleFrom(
            primary: Color4,
            padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
            textStyle:
                const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          child: const Text(
            '문학 셔틀',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("셔틀"),
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
              ShindorimButton(),
              pd50,
              IlsanButton(),
              pd50,
              BupyeongButton(),
              pd50,
              MunhakButton(),
            ],
          ),
        ),
      ),
    );
  }
}
