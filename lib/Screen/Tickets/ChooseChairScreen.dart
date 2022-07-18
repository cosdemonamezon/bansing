import 'package:bansing/constants.dart';
import 'package:flutter/material.dart';

class ChooseChairScreen extends StatefulWidget {
  ChooseChairScreen({Key? key}) : super(key: key);

  @override
  State<ChooseChairScreen> createState() => _ChooseChairScreenState();
}

class _ChooseChairScreenState extends State<ChooseChairScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: kInputSearchColor,
        centerTitle: true,
        title: Text(
          "เลือกที่นั่ง",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: kInputSearchColor,
          child: Column(
            children: [
              Image.asset(
                "assets/images/Stadium-3.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Choose Seat",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kFontPrimaryColor),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: kInputSearchColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18),
                  ),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          //color: Colors.red,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-red.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-yellow.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                        Container(
                          height: 38,
                          width: 35,
                          child: Image.asset("assets/images/seat-blue.png"),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
