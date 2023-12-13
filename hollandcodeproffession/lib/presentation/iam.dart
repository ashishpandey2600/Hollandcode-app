import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hollandcodeproffession/presentation/ican.dart';
import 'package:hollandcodeproffession/presentation/iliketo.dart';

import '../model/usermodel.dart';

class IAMPAGE extends StatefulWidget {
   final UserModel userModel;
  const IAMPAGE({super.key, required this.userModel});

  @override
  State<IAMPAGE> createState() => _IAMPAGEState();
}

class _IAMPAGEState extends State<IAMPAGE> {
  
  List<bool?> blackList = List.filled(18, false);
  List<bool?> yellowList = List.filled(18, false);
  List<bool?> blueList = List.filled(18, false);
  List<bool?> pinkList = List.filled(18, false);
  List<bool?> orangeList = List.filled(18, false);
  List<bool?> greenList = List.filled(18, false);

  changeblack(index) => setState(() {
        blackList[index] = !blackList[index]!;
      });
  changeorange(newValue, index) => setState(() {
        yellowList[index] = !yellowList[index]!;
      });
  changeblue(newValue, index) => setState(() {
        blueList[index] = !blueList[index]!;
      });
  changegreen(newValue, index) => setState(() {
        pinkList[index] = !pinkList[index]!;
      });
  changered(newValue, index) => setState(() {
        orangeList[index] = !orangeList[index]!;
      });
  changeYellow(newValue, index) => setState(() {
        greenList[index] = !greenList[index]!;
      });

  List<String> black1 = [
    'Practical',
    'Athletic',
    'Mechanically inclined',
    'A nature lover',
    'Shy or modest',
    'Persistent',
    "Fix electronic equipment",
    "Play a sport",
    "Work on cars",
    "Read a blueprint",
    "Operate tools and machinery",
    "Pitch a tent",
    'Work with my hands',
    'Be physically active',
    'Tend to or train animals',
    'Work outdoors',
    'Hunt or fish',
    'Build or repair things'
  ];
  // Group B
  List<String> orange1 = [
    'Scientific',
    'Precise',
    'Self-motivated',
    'Analytical',
    'Observant',
    'Curious',
    "Think abstractly",
    "Solve math problems",
    "Analyze data",
    "Use a microscope or computer",
    "Conduct research",
    "Do complex calculations",
    'Use computers',
    'Perform lab experiments',
    'Solve math or science questions',
    'Analyze situations and find solutions',
    'Do puzzles',
    'Work independently'
  ];

  // Group C
  List<String> blue1 = [
    'Creative',
    'Imaginative',
    'Innovative',
    'Sensitive or emotional',
    'Independent',
    'Intuitive',
    "Sketch, draw, paint",
    "Play a musical instrument",
    "Write stories or poems",
    "Design fashions or interiors",
    "Work independently",
    "Sing, act or dance"
        'Attend concerts or plays',
    'Paint, sculpt or do ceramics',
    'Read fiction and poetry',
    'Take photographs',
    'Decorate',
    'Work on crafts'
  ];

  // Group D
  List<String> green1 = [
    'Friendly',
    'Generous',
    'Helpful',
    'Patient',
    'Cooperative',
    'Idealistic',
    "Teach others",
    "Express myself clearly",
    "Lead a group discussion",
    "Mediate disputes",
    "Plan or supervise an activity",
    "Offer others guidance",
    'Work and socialize with others',
    'Help people solve problems',
    'Do volunteer work',
    'Work with children or the elderly',
    'Organize parties',
    'Play team sports',
  ];

  // Group E
  List<String> pink1 = [
    'Self-confident',
    'Persuasive',
    'Ambitious',
    'Impulsive',
    'Sociable',
    'Optimistic',
    'Convince others to do things my way',
    'Sell things or promote ideas',
    'Give talks or speeches',
    'Lead a group',
    'Manage people or products',
    'Initiate projects',
    'Make decisions affecting others',
    'Run a political campaign',
    'Start my own business',
    'Be with leaders',
    'Work on a sales campaign',
    'Win awards'
  ];

  // Group F
  List<String> yellow1 = [
    'Well organized',
    'Efficient',
    'Conscientious',
    'Systematic',
    'Accurate',
    'Polite',
    "Work well within a system",
    "Keep accurate records",
    "Use a computer",
    "Write effective business letters",
    "Operate office machines",
    "Create charts and graphs",
    "Work with numbers",
    "Be responsible for details",
    "Collect or organize things",
    "Follow a budget",
    "Keep things neat and organized",
    "Play board games"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("I am..."),
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
                  for (int index = 0; index < 6; index++)
                    Row(
                      children: [
                        Checkbox(
                          value:
                              blackList.isNotEmpty ? blackList[index] : false,
                          onChanged: (value) {
                            setState(() {
                              blackList[index] = value;
                              print(blackList[index]);
                            });
                          },
                        ),
                        Text(
                          black1[index],
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
                  for (int index = 0; index < 6; index++)
                    Row(
                      children: [
                        Checkbox(
                          value:
                              orangeList.isNotEmpty ? orangeList[index] : false,
                          onChanged: (value) {
                            setState(() {
                              orangeList[index] = value;
                              print(orangeList[index]);
                            });
                          },
                        ),
                        Text(
                          orange1[index],
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
                  for (int index = 0; index < 6; index++)
                    Row(
                      children: [
                        Checkbox(
                          value: blueList.isNotEmpty ? blueList[index] : false,
                          onChanged: (value) {
                            setState(() {
                              blueList[index] = value;
                              print(blueList[index]);
                            });
                          },
                        ),
                        Text(
                          blue1[index],
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
                  for (int index = 0; index < 6; index++)
                    Row(
                      children: [
                        Checkbox(
                          value:
                              greenList.isNotEmpty ? greenList[index] : false,
                          onChanged: (value) {
                            setState(() {
                              greenList[index] = value;
                              print(greenList[index]);
                            });
                          },
                        ),
                        Text(
                          green1[index],
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
                  for (int index = 0; index < 6; index++)
                    Row(
                      children: [
                        Checkbox(
                          value: pinkList.isNotEmpty ? pinkList[index] : false,
                          onChanged: (value) {
                            setState(() {
                              pinkList[index] = value;
                              print(pinkList[index]);
                            });
                          },
                        ),
                        Text(
                          pink1[index],
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
                  for (int index = 0; index < 6; index++)
                    Row(
                      children: [
                        Checkbox(
                          value:
                              yellowList.isNotEmpty ? yellowList[index] : false,
                          onChanged: (value) {
                            setState(() {
                              yellowList[index] = value;
                              print(yellowList[index]);
                            });
                          },
                        ),
                        Text(
                          yellow1[index],
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
              child: Text("I can.."),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ICAN(
                          userModel: widget.userModel,
                            blackList: blackList,
                            yellowList: yellowList,
                            blueList: blueList,
                            pinkList: pinkList,
                            orangeList: orangeList,
                            greenList: greenList,
                            black1: black1,
                            orange1: orange1,
                            blue1: blue1,
                            green1: green1,
                            pink1: pink1,
                            yellow1: yellow1)));
              },
              color: Colors.green),
        ]),
      )),
    );
  }
}
