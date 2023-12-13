import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hollandcodeproffession/main.dart';

import '../model/usermodel.dart';
import 'iam.dart';

class Hompage extends StatefulWidget {
   final UserModel userModel;
  const Hompage({super.key, required this.userModel});

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  int black = 0;
  int orange = 0;
  int blue = 0;
  int green = 0;
  int pink = 0;
  int yellow = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(" My Profession"),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Do you want to Logout ?"),
                          actions: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      FirebaseAuth.instance.signOut();
                                      Navigator.popUntil(
                                          context, (route) => false);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => MyApp()));
                                    },
                                    child: Text("Yes")),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text("No"))
                              ],
                            )
                          ],
                        ));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "What Is My Holland Code?",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Dr. John Holland reasoned that people work best in environments that match their preferences. He theorized that both people and occupations can be loosely classified into six different groups. Most people are some combination of two or three of these groups. If you choose an occupation that matches your Holland Code, you will be more likely to achieve job satisfaction and success.",
                    maxLines: null,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                CupertinoButton(
                  child: Text("Start ( I am.. )"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => IAMPAGE(userModel: widget.userModel,)));
                  },
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
