import 'package:flutter/material.dart';

import 'package:resume_builder/Common/Custom_Colors.dart';
import 'package:resume_builder/Create_resume/resume_pags/reference1.dart';
import 'package:resume_builder/Create_resume/resume_pags/acadmic1.dart';
import 'package:resume_builder/Create_resume/resume_pags/settings1.dart';
import 'package:resume_builder/Create_resume/resume_pags/intrestone.dart';
import 'package:resume_builder/Professional_Resume/additional_trainings.dart';
import 'package:resume_builder/Professional_Resume/professional_affilation.dart';

import '../../pdf_viewer/pdf_viewer.dart';
import '../../resume_templete.dart';
import '../../view_resume/view_resume_page.dart';
import '../Create_resume/navigation_menu.dart';
import '../Create_resume/resume_pags/ProfilePage.dart';
import '../Create_resume/resume_pags/achivements1.dart';
import '../Create_resume/resume_pags/experiencePage.dart';
import '../Create_resume/resume_pags/language.dart';
import 'confernce_attendance.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage2(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

class MyHomePage2 extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedMenuIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = new TabController(length: 11, vsync: this);

    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 20.0;
    return SafeArea(
      child: Scaffold(
        key: scaffoldkey,
        backgroundColor: Onboarolors.black,
        appBar: AppBar(
          title: Text('Professional Resume'),
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
                padding: const EdgeInsets.only(right: 10.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PdfViewer()));
                  },
                  icon: Icon(Icons.remove_red_eye_outlined),
                )),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xffF39034),
                  Color(0xffFF2727),
                ]),
          ),

          // margin: EdgeInsets.only(top: 10, left: 10),
          child: Row(
            children: <Widget>[
              Container(
                width: 50,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 45,
                        height: 45,
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset("assets/images/man.png"),
                      ),
                      Column(
                        children: [
                          NavigationMenu(
                              IconeName: Icons.person_add_alt_1_outlined,
                              IconText: 'Pesonal Info',
                              isSelected: selectedMenuIndex == 0,
                              onClick: () {
                                _tabController.animateTo(0);
                              }),
                        ],
                      ),
                      NavigationMenu(
                          IconeName: Icons.description_outlined,
                          IconText: 'Objectives',
                          isSelected: selectedMenuIndex == 1,
                          onClick: () {
                            _tabController.animateTo(1);
                          }),
                      NavigationMenu(
                          IconeName: Icons.badge_outlined,
                          IconText: 'Acaedmic',
                          isSelected: selectedMenuIndex == 2,
                          onClick: () {
                            _tabController.animateTo(2);
                          }),

                      NavigationMenu(
                          IconeName: Icons.work_history,
                          IconText: 'Professional',
                          isSelected: selectedMenuIndex == 3,
                          onClick: () {
                            _tabController.animateTo(3);
                          }),
                      NavigationMenu(
                          IconeName: Icons.language_outlined,
                          IconText: 'Key Skills',
                          isSelected: selectedMenuIndex == 4,
                          onClick: () {
                            _tabController.animateTo(4);
                          }),
                      NavigationMenu(
                          IconeName: Icons.link,
                          IconText: 'Achievement',
                          isSelected: selectedMenuIndex == 5,
                          onClick: () {
                            _tabController.animateTo(5);
                          }),
                      NavigationMenu(
                          IconeName: Icons.interests,
                          IconText: 'Certificats',
                          isSelected: selectedMenuIndex == 6,
                          onClick: () {
                            _tabController.animateTo(6);
                          }),
                      NavigationMenu(
                          IconeName: Icons.bookmark,
                          IconText: 'Publications',
                          isSelected: selectedMenuIndex == 7,
                          onClick: () {
                            _tabController.animateTo(7);
                          }),
                      NavigationMenu(
                          IconeName: Icons.connect_without_contact,
                          IconText: 'Affliations',
                          isSelected: selectedMenuIndex == 8,
                          onClick: () {
                            _tabController.animateTo(8);
                          }),
                      NavigationMenu(
                          IconeName: Icons.confirmation_number_outlined,
                          IconText: 'Conference',
                          isSelected: selectedMenuIndex == 9,
                          onClick: () {
                            _tabController.animateTo(9);
                          }),
                      NavigationMenu(
                          IconeName: Icons.workspaces_filled,
                          IconText: 'Trainings',
                          isSelected: selectedMenuIndex == 10,
                          onClick: () {
                            _tabController.animateTo(10);
                          }),
                    ],
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  child: TabBarView(
                    controller: _tabController,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ProfilePage(),
                      ExperiencePage(),
                      PortfolioPage(),
                      TeamPage(),
                      ContactPage(),
                      Achivements(),
                      Refernece(),
                      Settings(),
                      ProfessionalAfflication(),
                      ConferenceAttendence(),
                      AdditionalTrainings(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
