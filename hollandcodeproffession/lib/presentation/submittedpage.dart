import 'dart:collection';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hollandcodeproffession/model/usermodel.dart';
import 'package:hollandcodeproffession/presentation/homepage.dart';

class SubmittedPage extends StatefulWidget {
  final UserModel userModel;
  final List<bool?> blackList;
  final List<bool?> yellowList;
  final List<bool?> blueList;
  final List<bool?> pinkList;
  final List<bool?> orangeList;
  final List<bool?> greenList;
  const SubmittedPage(
      {super.key,
      required this.blackList,
      required this.yellowList,
      required this.blueList,
      required this.pinkList,
      required this.orangeList,
      required this.greenList,
      required this.userModel});

  @override
  State<SubmittedPage> createState() => _SubmittedPageState();
}

class _SubmittedPageState extends State<SubmittedPage> {
  String value = "You have not filled form properly";
  String primaryVal = "";
  String secondaryVal = "";
  String expaintext = "";
  String valuemad = "";
  String profession = "";
  Color tcolor = Colors.black;
  Color ccolor = Colors.black;

  int countTrueValues(List<bool?> list) {
    return list.where((element) => element == true).length;
  }

  calculateScore() {
    int blackCount = countTrueValues(widget.blackList);
    int yellowCount = countTrueValues(widget.yellowList);
    int blueCount = countTrueValues(widget.blueList);
    int pinkCount = countTrueValues(widget.pinkList);
    int orangeCount = countTrueValues(widget.orangeList);
    int greenCount = countTrueValues(widget.greenList);

    print('Black Count: $blackCount');
    print('Yellow Count: $yellowCount');
    print('Blue Count: $blueCount');
    print('Pink Count: $pinkCount');
    print('Orange Count: $orangeCount');
    print('Green Count: $greenCount');

    Map<String, int?> finalMap = {
      'R': blackCount,
      'C': yellowCount,
      'A': blueCount,
      'E': pinkCount,
      'I': orangeCount,
      'S': greenCount,
    };

    var elements = SplayTreeMap<int, String>();
    elements[blackCount] = 'R';
    elements[yellowCount] = 'C';
    elements[blueCount] = 'A';
    elements[pinkCount] = 'E';
    elements[orangeCount] = 'I';
    elements[greenCount] = 'S';

    // Convert the map entries to a sorted list by keys

    // Display the top three key-value pairs
    List<MapEntry<int, String>> topThreeEntries =
        elements.entries.toList().reversed.take(3).toList();

    // Create a combination of the keys of the top three entries
    String combination = topThreeEntries.map((entry) => entry.value).join();
    print('Combination: $combination');
    setState(() {
      valuemad = combination;
    });

    Map<String, String> RTitleMap = {
      'Aircraft Mechanic': 'RCI',
      'Auto Specialty Technician': 'RIC',
      'Brickmason': 'RCI',
      'Civil Engineer': 'RIC',
      'Electrician': 'RCI',
      'Heavy Truck Driver': 'RCI',
      'Plumber': 'RCI',
      'Security Guards': 'RCE',
    };
    Map<String, String> ITitleMap = {
      'Chemical Engineer': 'IRC',
      'Chemist': 'IRC',
      'Dentist': 'IRS',
      'Dietician': 'ISE',
      'Police Detective': 'EIC',
      'Software Developer': 'ICR',
      'Surgeon': 'IRS',
      'Veterinarian': 'IRS',
    };
    Map<String, String> ATitleMap = {
      'Actor': 'AES',
      'Architect': 'AIE',
      'Choreographer': 'ASE',
      'Creative Writer': 'AIE',
      'Fashion Designer': 'AER',
      'Graphic Designer': 'AER',
      'Interior Designer': 'AER',
      'Photographer': 'ARE',
    };

    Map<String, String> STitleMap = {
      'Arbitrator': 'SEC',
      'Elementary Teacher': 'SAC',
      'EMT': 'SIR',
      'Massage Therapist': 'SRI',
      'Registered Nurse': 'SIC',
      'School Counselor': 'SAE',
      'Tour Guide': 'SEA',
      'Waiter/Waitress': 'SEC',
    };
    Map<String, String> ETitleMap = {
      'Chef or Head Cook': 'ERA',
      'Chief Executive': 'ECS',
      'Financial Advisor': 'ECS',
      'Funeral Director': 'ESC',
      'Lawyer': 'EIA',
      'Real Estate Broker': 'ECR',
      'Sales Manager': 'ECS',
      'Telemarketer': 'ECR',
    };

    Map<String, String> CTitleMap = {
      'Accountant': 'CEI',
      'Computer Operator': 'CRI',
      'Controller': 'CEI',
      'Financial Analyst': 'CIE',
      'Librarian': 'CSE',
      'Receptionist': 'CES',
      'Statistician': 'CIR',
      'Bank Teller': 'CER',
    };

    print(combination[0]);

    if (combination[0] == 'R') {
      for (var entry in RTitleMap.entries) {
        if (entry.value == combination) {
          print('Key: ${entry.key}, Value: ${entry.value}');
          setState(() {
            value = "${entry.value}";
            profession = "${entry.key}";
            log(profession);
            primaryVal = "REALISTIC";
            secondaryVal = "(DOERS)";
            expaintext =
                "Realistic people are often good at mechanical or athletic jobs. They like to work with things, like machines, tools, or plants, and they like to work with their hands. They are often practical and good at solving problems.";
            log(value.toString());
          });
        }
      }
    }
    if (combination[0] == 'I') {
      for (var entry in ITitleMap.entries) {
        if (entry.value == combination) {
          print('Key: ${entry.key}, Value: ${entry.value}');
          setState(() {
            value = "${entry.value}";
            profession = "${entry.key}";
            primaryVal = "INVESTIGATIVE";
            secondaryVal = "(THINKERS)";
            expaintext =
                "Investigative people like to watch, learn, analyze and solve problems. They often like to work independently, tend to be good at math and science, and enjoy analyzing data.";
            log(value.toString());
          });
        }
      }
    }
    if (combination[0] == 'A') {
      for (var entry in ATitleMap.entries) {
        if (entry.value == combination) {
          print('Key: ${entry.key}, Value: ${entry.value}');
          setState(() {
            value = "${entry.value}";
            profession = "${entry.key}";
            primaryVal = "ARTISTIC";
            secondaryVal = "(CREATORS)";
            expaintext =
                "Artistic people like to work in unstructured situations where they can use their creativity and come up with new ideas. They enjoy performing (theater or music) and visual arts.";
            log(value.toString());
          });
        }
      }
    } else if (combination[0] == 'S') {
      for (var entry in STitleMap.entries) {
        if (entry.value == combination) {
          print('Key: ${entry.key}, Value: ${entry.value}');
          setState(() {
            value = "${entry.value}";
            profession = "${entry.key}";
            primaryVal = "SOCIAL";
            secondaryVal = "(HELPERS)";
            expaintext =
                "Social people like to work directly with people rather than things. They enjoy training, instructing, counseling, or curing others. They are often good public speakers with helpful, empathetic personalities.";
            log(value.toString());
          });
        }
      }
    } else if (combination[0] == 'E') {
      for (var entry in RTitleMap.entries) {
        if (entry.value == combination) {
          print('Key: ${entry.key}, Value: ${entry.value}');
          setState(() {
            value = "${entry.value}";
            profession = "${entry.key}";
            primaryVal = "ENTERPRISING";
            secondaryVal = "(PERSUADERS)";
            expaintext =
                "Enterprising people like to work with other people. They particularly enjoy influencing, persuading, and performing. They like to lead and tend to be assertive and enthusiastic.";
            log(value.toString());
          });
        }
      }
    } else if (combination[0] == 'C') {
      for (var entry in CTitleMap.entries) {
        if (entry.value == combination) {
          print('Key: ${entry.key}, Value: ${entry.value}');
          setState(() {
            value = "${entry.value}";
            profession = "${entry.key}";
            primaryVal = "CONVENTIONAL";
            secondaryVal = "(ORGANIZERS)";
            expaintext =
                "Conventional people are detail-oriented and like to work with data. They have good organizational and numerical abilities and are good at following instructions. They also like working in structured situations.";
            log(value.toString());
          });
        }
      }
    } else {
      log(value.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculateScore();
  }

  void uploadData() async {
    // setState(() {
    //   showSpinner = true;
    // });

    widget.userModel.hollandcode = value.toString();
    widget.userModel.profession = valuemad.toString();
    setState(() {});
    
    await FirebaseFirestore.instance
        .collection("users")
        .doc(widget.userModel.uid)
        .set(widget.userModel.toMap())
        .then((value) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Data Uploaded"),
        backgroundColor: Colors.green,
      ));
    });
    // setState(() {
    //   showSpinner = false;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),

                /**
                 * 
                 *   primaryVal = "CONVENTIONAL";
              secondaryVal = "(ORGANIZERS)";
              expaintext 
                 */
                Text("${value}"),
                Text(
                  "${primaryVal}",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.w900),
                ),
                Text("You can be ${profession}"),
                Text("${secondaryVal}"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${expaintext}",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
                Text("Your Code is $valuemad"),
                const SizedBox(
                  height: 10,
                ),
                CupertinoButton(
                    child: Text("End session"),
                    onPressed: () {
                      uploadData();
                      Navigator.popUntil(context, (route) => false);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Hompage(
                                    userModel: widget.userModel,
                                  )));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
