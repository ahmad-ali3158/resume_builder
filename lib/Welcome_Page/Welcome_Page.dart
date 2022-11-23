import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';

import '../Create_resume/main_resume.dart';
import '../Others/interviews_question.dart';
import '../Others/main_other.dart';
import '../Registration_letter/registration_letter_main.dart';
import '../Rromotion_Letter/promotion_letter_main.dart';
import '../SignUP/welcome_signup.dart';
import '../cover_letter/cover_letter_main.dart';

class DashboardPage2 extends StatefulWidget {
  const DashboardPage2({Key? key}) : super(key: key);

  @override
  State<DashboardPage2> createState() => _DashboardPage2State();
}

class _DashboardPage2State extends State<DashboardPage2> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  void hasnain() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            buttonPadding: EdgeInsets.only(left: 10, right: 20),
            actionsPadding: EdgeInsets.only(right: 30, bottom: 40, top: 30),
            titlePadding: EdgeInsets.only(
              left: 50,
              right: 50,
              top: 50,
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            title: Text(
              'Are you sure you want to Sign Out from the Profile ?',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Color(0xff454545),
              ),
            ),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  MaterialButton(
                      elevation: 20,
                      color: Colors.white,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide.lerp(
                            BorderSide(color: Color(0xffFD6B09)),
                            BorderSide(color: Color(0xffFD6B09)),
                            1),
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
                        side: BorderSide.lerp(
                            BorderSide(color: Color(0xffFD6B09)),
                            BorderSide(color: Color(0xffFD6B09)),
                            1),
                      ),
                      child: Text("No"),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      key: _globalKey,
      drawer: Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
        child: Container(
          height: 800,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.10),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Drawer(
            width: MediaQuery.of(context).size.width * 0.69,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 230,
                        height: 122,
                        decoration: BoxDecoration(
                          color: Color(0xffFFC7A2),
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(70)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/man.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "HARRY",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        //Navigator.push(context, SlideTransition1(HOME4()));
                                      },
                                      child: Text("View Profile",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                              fontSize: 10)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      horizontalTitleGap: 3,
                      leading: Icon(
                        Icons.home_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "Home",
                        style: TextStyle(
                            color: Color(0xff1B1D28),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      horizontalTitleGap: 3,
                      leading: Icon(
                        Icons.announcement_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "Term & Conditions",
                        style: TextStyle(
                            color: Color(0xff1B1D28),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      horizontalTitleGap: 3,
                      leading: Icon(
                        Icons.privacy_tip_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "Privacy Policy",
                        style: TextStyle(
                            color: Color(0xff1B1D28),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      horizontalTitleGap: 3,
                      leading: Icon(
                        Icons.workspace_premium_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "Premium Subscription",
                        style: TextStyle(
                            color: Color(0xff1B1D28),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      horizontalTitleGap: 3,
                      leading: Icon(
                        Icons.work_outline,
                        size: 30,
                      ),
                      title: Text(
                        "How It Works",
                        style: TextStyle(
                            color: Color(0xff1B1D28),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      horizontalTitleGap: 3,
                      leading: Icon(
                        Icons.safety_check_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "About Us",
                        style: TextStyle(
                            color: Color(0xff1B1D28),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ListTile(
                      horizontalTitleGap: 3,
                      leading: Icon(
                        Icons.support_outlined,
                        size: 30,
                      ),
                      title: Text(
                        "Support",
                        style: TextStyle(
                            color: Color(0xff1B1D28),
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: hasnain,
                    child: ListTile(
                      horizontalTitleGap: 3,
                      leading: SvgPicture.asset(
                        'assets/poweroff.svg',
                        height: 24,
                        width: 24,
                      ),
                      title: Text(
                        "Sign Out",
                        style: TextStyle(
                            color: Color(0xffED4527),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0, top: 5),
                    child: Text("Version 1.0.0",
                        style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 35.0, right: 35, bottom: 35, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: GestureDetector(
                    onTap: () {
                      _globalKey.currentState?.openDrawer();
                    },
                    child: Container(
                      child: Center(
                          child: Icon(
                        Icons.menu,
                        size: 21,
                      )),
                      width: MediaQuery.of(context).size.width * 0.11,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 2,
                            color: Color(0xffe9edf3),
                            offset: Offset(3, 4),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Icon(Icons.notifications),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello, ",
                      style: TextStyle(
                          fontSize: 13.5, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "HARRY",
                      style: TextStyle(
                          fontSize: 18.2, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    //  Navigator.push(context, SlideTransition1(HOME4()));
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeSignUp()));
                    },
                    child: Container(
                      height: 40,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/man.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainResume()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: 137,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xffF39034),
                          Color(0xffFF2727),
                        ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "CV / Resume",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            size: 40,
                            color: Onboarolors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CoverLetter()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: 137,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff9750F0),
                          Color(0xff5C03CB),
                        ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Cover Letter",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.book,
                            size: 40,
                            color: Onboarolors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationLetter()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: 137,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff1FD070),
                          Color(0xff02AA46),
                        ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Regestration Letter",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.messenger,
                            size: 40,
                            color: Onboarolors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PromtoionLetter()));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.43,
                  height: 137,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff9750F0),
                          Color(0xff5C03CB),
                        ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.10),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Promotion Letter",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.content_paste_rounded,
                            size: 40,
                            color: Onboarolors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "OTHERS",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffFD6B09),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtherMain()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xff9750F0),
                              Color(0xff5C03CB),
                            ]),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.10),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "DOWNLOADS",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => interViewsQuestions()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff1FD071),
                            Color(0xff00A843),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.10),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "INTERVIEWS QUESTIONS",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
