import 'package:flutter/material.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';

import '../Professional_Resume/professional_resume_main.dart';
import '../Professional_Resume/standard_resume_main.dart';
import 'resume_pags/normal_resume.dart';

class MainResume extends StatelessWidget {
  const MainResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Resume'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xffF39034),
                  Color(0xffFF2727),
                ]),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/man.png'),

            ),
          ),
        ],
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Center(
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xffF39034),
                          Color(0xffFF2727),
                        ]),
                  ),
                  child: Center(
                      child: Text(
                    'Normal Resume/CV',
                    style: TextStyle(fontSize: 25, color: Onboarolors.black),
                  )),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage1()));

            },
            child: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Center(
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xffF39034),
                          Color(0xffFF2727),
                        ]),
                  ),
                  child: Center(
                      child: Text(
                    'Standard Resume/CV',
                    style: TextStyle(fontSize: 25, color: Onboarolors.black),
                  )),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage2()));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Center(
                child: Container(
                  height: 65,
                  width: MediaQuery.of(context).size.width * 0.87,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xffF39034),
                          Color(0xffFF2727),
                        ]),
                  ),
                  child: Center(
                      child: Text(
                    'Professional Resume/CV',
                    style: TextStyle(fontSize: 25, color: Onboarolors.black),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
