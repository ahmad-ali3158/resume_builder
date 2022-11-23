import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';

import '../../resume_templete.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

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
            'Professional Info',
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
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width * 0.80,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  ListTile(
                    leading: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            {
                              Signup(context);
                            }
                          },
                          icon: Icon(Icons.edit),
                          color: Colors.white,
                        ),
                      ],
                    ),
                    title: Text(
                      ' Professional Info ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        {
                          edit(context);
                        }
                      },
                      icon: Icon(Icons.delete_outline_outlined),
                      color: Colors.white,
                    ),
                  ),
                  PreferredSize(
                      child: Container(
                        color: Colors.white,
                        height: 1.0,
                      ),
                      preferredSize: Size.fromHeight(1.0)),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Work As A',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Work Title',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 10),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Organization Name ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'GMSH',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 8),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Duration ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '2019-2022',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 8),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Work Description',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Description of your work',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void Signup(BuildContext context) {
  TextEditingController _durationtwo = new TextEditingController();
  TextEditingController _descriptionone = new TextEditingController();
  TextEditingController _designation = new TextEditingController();
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
              'Professional Info',
              style: TextStyle(
                  color: Onboarolors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
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
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _durationtwo,
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Work Title",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _descriptionone,
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Organization Name",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _designation,
                  autofocus: true,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                      hintText: "Duration",
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 5, top: 15),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.date_range,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Work Description",
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                    contentPadding: EdgeInsets.only(
                      left: 10,
                    ),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
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
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.red),
                    ),
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
                    child: Text(
                      "Confirm",
                      style: TextStyle(color: Colors.red),
                    ),
                  onPressed: (){
                    Navigator.of(context, rootNavigator: true).pop('dialog');
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ResumeTemplete(
                      designation: _designation.text,
                      durationtwo: _durationtwo.text,
                      descriptionone: _descriptionone.text,
                    )));
                  },),
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
