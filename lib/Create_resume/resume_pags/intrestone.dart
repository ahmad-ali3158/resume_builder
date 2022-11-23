import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';

import '../../resume_templete.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
            'Publications',
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
              height: 120,
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
                      ' Publication 1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
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
                            'Publication 1',
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
                            'Ring Of Fire',
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
  TextEditingController _interest = new TextEditingController();

  Timer(Duration(seconds: 3), () {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Home()));
  });
  var alertDialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SingleChildScrollView(
      child: Container(
        height: 480,
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
              'Publications',
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
                  controller: _interest,
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Add Publications",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 300,
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
                      interest: _interest.text,
                    )));
                  },
                ),
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
