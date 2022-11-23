import 'package:flutter/material.dart';

import 'ALL_RESUME_PAGE.dart';
import 'basic_page_resume.dart';
import 'bundle_resume_page.dart';
import 'country_resume_page.dart';
import 'premium_resume.dart';
import 'professional_page_resume.dart';
import 'single_page_resume.dart';

class ViewResumeMain extends StatefulWidget {
  const ViewResumeMain({Key? key}) : super(key: key);

  @override
  State<ViewResumeMain> createState() => _ViewResumeMainState();
}

class _ViewResumeMainState extends State<ViewResumeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 7,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
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
                toolbarHeight: 10,
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                bottom: TabBar(
                  isScrollable: true,
                  tabs: [
                    Tab(
                      child: Text(
                        "ALL",
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "PERMIUM",
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "BUNDLES",
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "PROFESSIONAL",
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "COUNTRY",
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "SINGLE PAGE",
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "BASIC",
                        style: TextStyle(
                            fontFamily: "BarlowBold",
                            color: Colors.white,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              AllResumePage(),
              PremiumResumePage(),
              BundleResumePage(),
              ProfessionalResumePage(),
              CountryResumePage(),
              SinglePageResume(),
              BasicPageResume(),
            ],
          ),
        ),
      ),
    );
  }
}
