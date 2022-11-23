import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';

class Refernece extends StatelessWidget {
  const Refernece({Key? key}) : super(key: key);

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
            'Upload Your Certificates',
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
                    edit2(context);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      {
                        edit2(context);
                      }
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Onboarolors.red),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Column(
                          children: [
                            Text(
                              'Certificate 2',
                              style: TextStyle(
                                  color: Onboarolors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Certificate Of Complition as a App Developer',
                              style: TextStyle(
                                  color: Onboarolors.black, fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void edit1(BuildContext context) {
  Timer(Duration(seconds: 3), () {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Home()));
  });
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SingleChildScrollView(
      child: Container(
        height: 230,
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
              'Rename Categary',
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Objectives',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Objectives',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
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
                        hintText: "Rename Lable",
                        hintStyle:
                            TextStyle(fontSize: 15.0, color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.only(left: 5),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
            ),
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

void edit2(BuildContext context) {
  Timer(Duration(seconds: 3), () {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Home()));
  });
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SingleChildScrollView(
      child: Container(
        height: 230,
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
              'Certificates',
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Certificates info',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
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
                        hintText: "Certificate About",
                        hintStyle:
                            TextStyle(fontSize: 15.0, color: Colors.white),
                        labelStyle: TextStyle(color: Colors.white),
                        contentPadding: EdgeInsets.only(left: 5),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none),
                  ),
                ),
              ),
            ),
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
