import 'package:flutter/material.dart';


class OtherMain extends StatelessWidget {
  const OtherMain({Key? key}) : super(key: key);

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
                  Color(0xff9750F0),
                  Color(0xff5C03CB),
                ]),
          ),
        ),
        title: Text('Downloads'),
       
      ),
    );
  }
}
