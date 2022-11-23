import 'package:flutter/material.dart';

class interViewsQuestions extends StatelessWidget {
  const interViewsQuestions({Key? key}) : super(key: key);

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
        title: Text('Interviews Question'),

      ),
    );
  }
}
