import 'package:flutter/material.dart';

class ResumeTemplete extends StatelessWidget {
  ResumeTemplete(
      {Key? key,
      this.description,
      this.name,
      this.email,
      this.address,
      this.language,
      this.interest,
      this.dagree,
      this.insitute,
      this.duration,
      this.durationtwo,
      this.descriptionone,
      this.skill,
      this.designation,
      this.phonenumber})
      : super(key: key);

  String? description;
  String? name;
  String? phonenumber;
  String? email;
  String? address;
  String? language;
  String? interest;
  String? dagree;
  String? insitute;
  String? duration;
  String? durationtwo;
  String? designation;
  String? descriptionone;
  String? skill;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(color: Colors.black54),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: CircleAvatar(
                        minRadius: 30,
                        maxRadius: 30,
                        backgroundImage: AssetImage(
                          'assets/images/man.png',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        ' ${name}',
                        style: TextStyle(color: Colors.white54, fontSize: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 20,
                        width: double.infinity,
                        decoration:
                            BoxDecoration(color: Colors.deepPurple.shade300),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, left: 8),
                            child: Text('CONTACT',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call_outlined,
                                  size: 10,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(' ${phonenumber}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  size: 10,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(' ${email}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 6)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 10,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(' ${address}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 20,
                        width: double.infinity,
                        decoration:
                            BoxDecoration(color: Colors.deepPurple.shade300),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, left: 8),
                            child: Text('LANGUAGES',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text(' ${language}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text('LANGUAGE 2 ( Expert )',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text('LANGUAGE 3 ( Expert )',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text('LANGUAGE 4 ( Expert )',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 20,
                        width: double.infinity,
                        decoration:
                            BoxDecoration(color: Colors.deepPurple.shade300),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 8.0,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5.0, left: 8),
                            child: Text('INTERESTS',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text(' ${interest}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text('Interest 2',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text('Interest 3',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text('Interest 4',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 8)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            size: 18,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Objectives',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    PreferredSize(
                        child: Container(
                          color: Colors.black54,
                          height: 2.0,
                        ),
                        preferredSize: Size.fromHeight(1.0)),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 6.0, top: 6, right: 1),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            // color: Onboarolors.red,
                            borderRadius: BorderRadius.circular(30)),
                        child: Text(
                          ' ${description}',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.food_bank,
                            size: 18,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Qualifications',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    PreferredSize(
                        child: Container(
                          color: Colors.black54,
                          height: 2.0,
                        ),
                        preferredSize: Size.fromHeight(1.0)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' ${dagree}',
                          ),
                          Text(
                            ' ${insitute}',
                          ),
                          Text(
                            ' ${duration}',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.menu_outlined,
                            size: 18,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Achivements',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    PreferredSize(
                        child: Container(
                          color: Colors.black54,
                          height: 2.0,
                        ),
                        preferredSize: Size.fromHeight(1.0)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' ${durationtwo}',
                          ),
                          Text(
                            ' ${designation}',
                          ),
                          Text(
                            ' ${descriptionone}',
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sports,
                            size: 18,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Skills',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    PreferredSize(
                        child: Container(
                          color: Colors.black54,
                          height: 2.0,
                        ),
                        preferredSize: Size.fromHeight(1.0)),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' ${skill}',
                          ),
                          Text('Technical Skill 2'),
                          Text('Technical Skill 3'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.room_preferences,
                            size: 18,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text('Reference',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    PreferredSize(
                        child: Container(
                          color: Colors.black54,
                          height: 2.0,
                        ),
                        preferredSize: Size.fromHeight(1.0)),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, left: 10),
                      child: Text('Available in Premium Subscription'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
