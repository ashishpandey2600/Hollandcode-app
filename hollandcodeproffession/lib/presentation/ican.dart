import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hollandcodeproffession/model/usermodel.dart';

import 'iliketo.dart';

class ICAN extends StatefulWidget {
  final UserModel userModel;
  final List<bool?> blackList;
  final List<bool?> yellowList;
  final List<bool?> blueList;
  final List<bool?> pinkList;
  final List<bool?> orangeList;
  final List<bool?> greenList;

  final List<String> black1;
  final List<String> orange1;
  final List<String> blue1;
  final List<String> green1;
  final List<String> pink1;
  final List<String> yellow1;

  const ICAN(
      {super.key,
      required this.blackList,
      required this.yellowList,
      required this.blueList,
      required this.pinkList,
      required this.orangeList,
      required this.greenList,
      required this.black1,
      required this.orange1,
      required this.blue1,
      required this.green1,
      required this.pink1,
      required this.yellow1, required this.userModel});

  @override
  State<ICAN> createState() => _ICANState();
}

class _ICANState extends State<ICAN> {
  List<String> black2 = [
    "Fix electronic equipment",
    "Play a sport",
    "Work on cars",
    "Read a blueprint",
    "Operate tools and machinery",
    "Pitch a tent",
  ];

  List<String> orange2 = [
    "Think abstractly",
    "Solve math problems",
    "Analyze data",
    "Use a microscope or computer",
    "Conduct research",
    "Do complex calculations",
  ];

  List<String> blue2 = [
    "Sketch, draw, paint",
    "Play a musical instrument",
    "Write stories or poems",
    "Design fashions or interiors",
    "Work independently",
    "Sing, act or dance"
  ];

  List<String> green2 = [
    "Teach others",
    "Express myself clearly",
    "Lead a group discussion",
    "Mediate disputes",
    "Plan or supervise an activity",
    "Offer others guidance",
  ];

  List<String> pink2 = [
    "Convince others to do things my way",
    "Sell things or promote ideas",
    "Give talks or speeches",
    "Lead a group"
        "Manage people or products",
    "Initiate projects",
  ];

  List<String> yellow2 = [
    "Work well within a system",
    "Keep accurate records",
    "Use a computer",
    "Write effective business letters",
    "Operate office machines",
    "Create charts and graphs",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(" I can..."),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Card(
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  for (int index = 6; index < 12; index++)
                    Row(
                      children: [
                        Checkbox(
                          value: widget.blackList.isNotEmpty
                              ? widget.blackList[index]
                              : false,
                          onChanged: (value) {
                            setState(() {
                              widget.blackList[index] = value;
                              print(widget.blackList[index]);
                            });
                          },
                        ),
                        Text(
                          widget.black1[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 231, 124, 92),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  for (int index = 6; index < 12; index++)
                    Row(
                      children: [
                        Checkbox(
                          value: widget.orangeList.isNotEmpty
                              ? widget.orangeList[index]
                              : false,
                          onChanged: (value) {
                            setState(() {
                              widget.orangeList[index] = value;
                              print(widget.orangeList[index]);
                            });
                          },
                        ),
                        Text(
                          widget.orange1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 94, 176, 243),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  for (int index = 6; index < 12; index++)
                    Row(
                      children: [
                        Checkbox(
                          value: widget.blueList.isNotEmpty
                              ? widget.blueList[index]
                              : false,
                          onChanged: (value) {
                            setState(() {
                              widget.blueList[index] = value;
                              print(widget.blueList[index]);
                            });
                          },
                        ),
                        Text(
                          widget.blue1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  for (int index = 6; index < 12; index++)
                    Row(
                      children: [
                        Checkbox(
                          value: widget.greenList.isNotEmpty
                              ? widget.greenList[index]
                              : false,
                          onChanged: (value) {
                            setState(() {
                              widget.greenList[index] = value;
                              print(widget.greenList[index]);
                            });
                          },
                        ),
                        Text(
                          widget.green1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  for (int index = 6; index < 12; index++)
                    Row(
                      children: [
                        Checkbox(
                          value: widget.pinkList.isNotEmpty
                              ? widget.pinkList[index]
                              : false,
                          onChanged: (value) {
                            setState(() {
                              widget.pinkList[index] = value;
                              print(widget.pinkList[index]);
                            });
                          },
                        ),
                        Text(
                          widget.pink1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Card(
            color: Color.fromARGB(255, 188, 169, 3),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  for (int index = 6; index < 12; index++)
                    Row(
                      children: [
                        Checkbox(
                          value: widget.yellowList.isNotEmpty
                              ? widget.yellowList[index]
                              : false,
                          onChanged: (value) {
                            setState(() {
                              widget.yellowList[index] = value;
                              print(widget.yellowList[index]);
                            });
                          },
                        ),
                        Text(
                          widget.yellow1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CupertinoButton(
            child: Text("I like to.."),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ILIKETO(
                        userModel: widget.userModel,
                          blackList: widget.blackList,
                          yellowList: widget.yellowList,
                          blueList: widget.blueList,
                          pinkList: widget.pinkList,
                          orangeList: widget.orangeList,
                          greenList: widget.greenList,
                          black1: widget.black1,
                          orange1: widget.orange1,
                          blue1: widget.blue1,
                          green1: widget.green1,
                          pink1: widget.pink1,
                          yellow1: widget.yellow1)));
            },
            color: Colors.blue,
          )
        ]),
      )),
    );
  }
}
