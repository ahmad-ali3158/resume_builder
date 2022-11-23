import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';

import '../../resume_templete.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({Key? key}) : super(key: key);

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  TextEditingController _description = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 17.0),
          child: CircleAvatar(
            backgroundColor: Onboarolors.red,
            child: IconButton(
              onPressed: () {
                {
                  edit(context);
                }
              },
              icon: Icon(Icons.edit),
              color: Colors.white,
            ),
          ),
        ),
        title: Center(
          child: Text(
            'Objectives',
            style: TextStyle(color: Onboarolors.white),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: CircleAvatar(
              backgroundColor: Onboarolors.red,
              child: IconButton(
                onPressed: () {
                  {
                    Signup(context);
                  }
                },
                icon: Icon(Icons.add),
                color: Colors.white,
              ),
            ),
          )
        ],
        bottom: PreferredSize(
            child: Container(
              color: Colors.red,
              height: 2.0,
            ),
            preferredSize: Size.fromHeight(1.0)),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  // spreadRadius: 3,
                  // blurRadius: 7,
                  // offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: SizedBox(
              height: 160,
              width: double.infinity,
              child: TextFormField(
                minLines: 2,
                style: TextStyle(color: Colors.red),
                maxLines: 5,
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.multiline,
                controller: _description,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: "Write Your Objectives",
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.only(left: 5),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none),
                validator: (value) {
                  if (value!.isNotEmpty && value.length > 2) {
                    return null;
                  } else if (value.length < 3 && value.isNotEmpty) {
                    return 'No way your name is that short';
                  } else {
                    return 'Please give your Name';
                  }
                },
              ),
            ),
          ),
          PreferredSize(
              child: Container(
                color: Colors.red,
                height: 2.0,
              ),
              preferredSize: Size.fromHeight(1.0)),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 18.0, left: 100),
            child: Container(
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
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onSurface: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pop('dialog');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResumeTemplete(
                                description: _description.text,
                              )));
                },
                child: Center(
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      letterSpacing: -0.3858822937011719,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

void Signup(BuildContext context) {
  Timer(Duration(seconds: 3), () {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Home()));
  });
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SingleChildScrollView(
      child: Container(
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
            )),
            Text(
              'Objectives',
              style: TextStyle(
                  color: Onboarolors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Text(
              textAlign: TextAlign.center,
              'Suggestions',
              style: TextStyle(color: Onboarolors.white),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 2.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    // color: Onboarolors.red,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'To obtain an entry-level position as a '
                  '[specific job title] that will  ',
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
          ],
        ),
      ),
    ),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}

void edit(BuildContext context) {
  Timer(Duration(seconds: 3), () {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Home()));
  });
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SingleChildScrollView(
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(250),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
            )),
            Text(
              'Do You Want To Delete ?',
              style: TextStyle(
                  color: Onboarolors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            PreferredSize(
                child: Container(
                  color: Colors.red,
                  height: 1.0,
                ),
                preferredSize: Size.fromHeight(1.0)),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                MaterialButton(
                    elevation: 20,
                    color: Colors.white,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("Yes"),
                    onPressed: () {}),
                SizedBox(
                  width: 20,
                ),
                MaterialButton(
                    elevation: 20,
                    color: Colors.white,
                    height: 50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text("No"),
                    onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    ),
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
