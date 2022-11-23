import 'dart:async';

import 'package:flutter/material.dart';

class RegistrationLetterTemplete extends StatelessWidget {
  const RegistrationLetterTemplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff1FD070),
                  Color(0xff02AA46),
                ]),
          ),
        ),
        title: Text('Select Registration Letter'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: MydelegateSearch());
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CoverLetterContiner(
              ContinerColor: Colors.blueGrey.shade700,
              ContinerText: 'Sample 1: Two Week Notice',
              ONTAP: () {
                {
                  Signup(context);
                }
              },
            ),
            CoverLetterContiner(
              ContinerColor: Colors.red.shade300,
              ContinerText: 'One Week Notice: Sales ',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.blue.shade400,
              ContinerText: 'Sample 2: Two Week Notice',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.purple.shade500,
              ContinerText: 'Sample 3: Two Month Notice',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.yellowAccent.shade700,
              ContinerText: 'Sample 4: Nurse Resignation',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.green.shade700,
              ContinerText: 'Short Resignation',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.orange.shade700,
              ContinerText: 'Simple Resignation',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.red.shade700,
              ContinerText: 'Formal Resignation',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.teal.shade700,
              ContinerText: 'Professional Resignation',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.yellow.shade700,
              ContinerText: 'Teacher Resignation',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.blue.shade400,
              ContinerText: 'Nurse Coordinator',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.purple.shade500,
              ContinerText: 'Board Resignation',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.yellowAccent.shade700,
              ContinerText: 'Police Resignation',
            ),
            CoverLetterContiner(
              ContinerColor: Colors.green.shade700,
              ContinerText: 'Church Resignation',
            ),
          ],
        ),
      ),
    );
  }
}

class CoverLetterContiner extends StatelessWidget {
  CoverLetterContiner(
      {Key? key,
      required this.ContinerColor,
      required this.ContinerText,
      this.ONTAP})
      : super(key: key);
  Color ContinerColor;
  String ContinerText;
  VoidCallback? ONTAP;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15),
        child: GestureDetector(
          onTap: ONTAP,
          child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                color: ContinerColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0, left: 20),
                child: Text(
                  ContinerText,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
              )),
        ));
  }
}

class MydelegateSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = " ";
            }
          },
          icon: Icon(Icons.clear),
        ),
      ];

  @override
  Widget? buildLeading(BuildContext context) {}

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  late VoidCallback onTap;

  @override
  Widget buildSuggestions(BuildContext context) {
    List suggestions = [
      CoverLetterContiner(
        ContinerColor: Colors.red.shade300,
        ContinerText: 'One Week Notice: Sales ',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.blue.shade400,
        ContinerText: 'Sample 2: Two Week Notice',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.purple.shade500,
        ContinerText: 'Sample 3: Two Month Notice',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.yellowAccent.shade700,
        ContinerText: 'Sample 4: Nurse Resignation',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.green.shade700,
        ContinerText: 'Short Resignation',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.orange.shade700,
        ContinerText: 'Simple Resignation',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.red.shade700,
        ContinerText: 'Formal Resignation',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.teal.shade700,
        ContinerText: 'Professional Resignation',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.yellow.shade700,
        ContinerText: 'Teacher Resignation',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.blue.shade400,
        ContinerText: 'Nurse Coordinator',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.purple.shade500,
        ContinerText: 'Board Resignation',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.yellowAccent.shade700,
        ContinerText: 'Police Resignation',
      ),
      CoverLetterContiner(
        ContinerColor: Colors.green.shade700,
        ContinerText: 'Church Resignation',
      ),
    ];
    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return Container(
            child: suggestion,
          );
        });
  }
}

void Signup(BuildContext context) {

  Timer(Duration(seconds: 3), () {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => Home()));
  });
  var alertDialog = AlertDialog(
    insetPadding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    content: SingleChildScrollView(
      child: Container(
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.99,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade500,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cancel_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    'Two Week Notice',
                    style: TextStyle(color: Colors.white),
                  ),
                  Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.gpp_good_outlined,
                        size: 30,
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
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alertDialog;
      });
}
