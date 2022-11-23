import 'package:flutter/material.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'promotion_letter_templete.dart';


class PromtoionLetter extends StatefulWidget {
  const PromtoionLetter({Key? key}) : super(key: key);

  @override
  State<PromtoionLetter> createState() => _CoverLetterState();
}

class _CoverLetterState extends State<PromtoionLetter> {
  bool status1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 40,
            child: FloatingActionButton(
              backgroundColor: Onboarolors.grey,
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => CallDetails()),
                // );
              },
              child: Icon(
                Icons.remove_red_eye_outlined,
                color: Onboarolors.black,
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
        ],
      ),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff9750F0),
                  Color(0xff5C03CB),
                ]),
          ),
        ),
        title: Text('Promotion Letter'),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PromotionLetterTemplete()));
                },
                icon: Icon(Icons.email_outlined),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Padding(
            //   padding: const EdgeInsets.only(left: 10.0, right: 10),
            //   child: ListTile(
            //     title: Text(
            //       'Include Cover Letter',
            //       style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            //     ),
            //     trailing: Row(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         FlutterSwitch(
            //           width: 45.0,
            //           height: 25.0,
            //           valueFontSize: 25.0,
            //           toggleSize: 15.0,
            //           value: status1,
            //           borderRadius: 30.0,
            //           padding: 8.0,
            //           activeColor: Onboarolors.blue,
            //           // showOnOff: true,
            //           onToggle: (val) {
            //             setState(() {
            //               status1 = val;
            //             });
            //           },
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0, top: 10),
              child: Text(
                'Header',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0, top: 10, right: 25),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff9750F0),
                        Color(0xff5C03CB),
                      ]),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Write Your Header",
                        hintStyle:
                        TextStyle(fontSize: 17.0, color: Colors.white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.only(left: 10),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, top: 15),
              child: Text(
                'Body',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0, top: 10, right: 25),
              child: Container(
                height: 600,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff9750F0),
                        Color(0xff5C03CB),
                      ]),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Write Body Of Your Promotion Letter",
                        hintStyle:
                        TextStyle(fontSize: 17.0, color: Colors.white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.only(left: 10),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 15),
              child: Text(
                'Footer',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, top: 10, right: 25, bottom: 60),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff9750F0),
                        Color(0xff5C03CB),
                      ]),
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: "Write Your Footer",
                        hintStyle:
                        TextStyle(fontSize: 17.0, color: Colors.white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal,
                          ),
                        ),
                        labelStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.only(left: 10, top: 10),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
