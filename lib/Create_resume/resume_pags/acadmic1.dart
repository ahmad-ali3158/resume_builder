import 'dart:async';

import 'package:flutter/material.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';
import 'package:intl/intl.dart';


import '../../resume_templete.dart';


class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
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
            'Academic Info',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 230,
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
                        ' Academic 1',
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
                              'Dagree 1',
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
                              'Matric',
                              style: TextStyle(
                                 color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 15),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Insitute 1',
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
                              'GGS',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 15),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Duration',
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
                              '2014-2016',
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 230,
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
                        ' Academic 2',
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
                              'Dagree 2',
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
                              'Intermediate',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 15),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Insitute 2',
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
                              'Muslim College Multan',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 15),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Duration',
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
                              '2017-2019',
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
      ),
    );
  }
}

void Signup(BuildContext context) {

  TextEditingController dateinput = TextEditingController();

  TextEditingController _insitute = new TextEditingController();
  TextEditingController _dagree = new TextEditingController();
  TextEditingController _duration = new TextEditingController();

  Timer(Duration(seconds: 3), () {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Home()));
  });

  showDialog(
    context: context,
    builder: (BuildContext context) {
      int selectedRadio = 0; // Declare your variable outside the builder

      return AlertDialog(
        content: StatefulBuilder(

          // You need this, notice the parameters below:
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
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
                      'Qualification',
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
                          controller: _insitute,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: "Dagree Name",
                              hintStyle: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
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
                          controller: _dagree,
                          autofocus: true,
                          decoration: InputDecoration(
                              hintText: "Insitute Name",
                              hintStyle: TextStyle(
                                  fontSize: 15.0, color: Colors.white),
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
                      width: MediaQuery.of(context).size.width * 0.76,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Container(

                          child: TextField(
                            controller: dateinput,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 5),
                              fillColor: Colors.redAccent,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none),
                              hintText: 'Date of Birth',
                              hintStyle:
                              TextStyle(fontSize: 15.0, color: Colors.white),
                              labelStyle: TextStyle(color: Colors.white),

                              suffixIcon: Icon(
                                Icons.date_range_outlined,
                                color: Colors.white,
                              ),
                            ),
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101));

                              if (pickedDate != null) {
                                print(pickedDate);
                                String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(formattedDate);

                                setState(() {
                                  dateinput.text = formattedDate;
                                });
                              } else {
                                print("Date is not selected");
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.76,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.redAccent,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Container(

                          child: TextField(
                            controller: dateinput,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(left: 5),
                              fillColor: Colors.redAccent,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide.none),
                              hintText: 'End Date',
                              hintStyle:
                              TextStyle(fontSize: 15.0, color: Colors.white),
                              labelStyle: TextStyle(color: Colors.white),

                              suffixIcon: Icon(
                                Icons.date_range_outlined,
                                color: Colors.white,
                              ),
                            ),
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime(2101));

                              if (pickedDate != null) {
                                print(pickedDate);
                                String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(formattedDate);

                                setState(() {
                                  dateinput.text = formattedDate;
                                });
                              } else {
                                print("Date is not selected");
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResumeTemplete(
                                          insitute: _insitute.text,
                                          dagree: _dagree.text,
                                          duration: _duration.text,
                                        )));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
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



