import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:resume_builder/Common/Custom_Colors.dart';
import 'package:intl/intl.dart';
import '../../resume_templete.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _FillYourProfileState();
}

class _FillYourProfileState extends State<ProfilePage> {
  TextEditingController _name = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phonenumber = new TextEditingController();
  TextEditingController _address = new TextEditingController();

  TextEditingController dateinput = TextEditingController();

  File? _image;

  Future getimage(ImageSource source) async {
    final image = await ImagePicker.platform.getImage(source: source);
    if (image == null) return;

    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [
        CropAspectRatioPreset.square,
        CropAspectRatioPreset.ratio3x2,
        CropAspectRatioPreset.original,
        CropAspectRatioPreset.ratio4x3,
        CropAspectRatioPreset.ratio16x9
      ],
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
      ],
    );
    final imageTemporary = File(croppedFile!.path);
    setState(() {
      this._image = imageTemporary;
    });
  }

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Personal Info ',
            style: TextStyle(color: Onboarolors.white),
          ),
        ),
        bottom: PreferredSize(
            child: Container(
              color: Colors.red,
              height: 2.0,
            ),
            preferredSize: Size.fromHeight(1.0)),
      ),

      // backgroundColor: Onboarolors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Onboarolors.halkawhite,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(80),
                      child: _image != null
                          ? Image.file(
                              _image!,
                              height: 100,
                              width: 100,
                              fit: BoxFit.fill,
                            )
                          : Icon(
                              Icons.person,
                              size: 110,
                              color: Onboarolors.backgroundimage,
                            ),
                    ),
                  ),
                ),
                PopupMenuButton(
                  position: PopupMenuPosition.under,
                  itemBuilder: (Context) {
                    return [
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () => getimage(ImageSource.gallery),
                          child: Text("Choose from gallery"),
                        ),
                      ),
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () => getimage(ImageSource.camera),
                          child: Text("Camera"),
                        ),
                      ),
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              _image = null;
                              Navigator.pop(context);
                            });
                          },
                          child: Text("Remove"),
                        ),
                      ),
                    ];
                  },
                  child: Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xffF39034),
                              Color(0xffFF2727),
                            ]),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.edit,
                      size: 20,
                      color: Onboarolors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _name,
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Full Name",
                      labelStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
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
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  child: TextField(
                    controller: dateinput,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      hintText: 'Date of Birth',
                      labelStyle: TextStyle(color: Onboarolors.halkawhite),
                      suffixIcon: Icon(
                        Icons.calendar_today,
                        color: Colors.red,
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
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _email,
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: "Email",
                    labelStyle: TextStyle(color: Onboarolors.halkawhite),
                    contentPadding: EdgeInsets.only(left: 5, top: 15),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    suffixIcon: Icon(
                      Icons.email,
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _phonenumber,
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "PHONE # ",
                      labelStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    // spreadRadius: 3,
                    // blurRadius: 7,
                    // offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: SizedBox(
                width: double.infinity,
                child: TextFormField(
                  controller: _address,
                  autofocus: true,
                  decoration: InputDecoration(
                      hintText: "Address",
                      labelStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                  validator: (value) {
                    if (value!.isNotEmpty && value.length > 2) {
                      return null;
                    } else if (value.length < 3 && value.isNotEmpty) {
                      return 'No way your name is that short';
                    } else {
                      return 'Please give your Name';
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
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
                      hintText: "Nationality (Optional)",
                      labelStyle: TextStyle(color: Colors.black),
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
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
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
                      hintText: "NIC# (Optional)",
                      labelStyle: TextStyle(color: Colors.black),
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
              margin: EdgeInsets.only(right: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
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
                      hintText: "RELIGION(Optional)",
                      labelStyle: TextStyle(color: Colors.black),
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
              margin: EdgeInsets.only(right: 20, left: 20, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
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
                      hintText: "WEBSITE (Optional)",
                      labelStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.only(left: 5),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0 , left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xffF39034),
                        Color(0xffFF2727),
                      ]),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResumeTemplete(
                                  name: _name.text,
                                  address: _address.text,
                                  email: _email.text,
                                  phonenumber: _phonenumber.text,
                                )));
                  },
                  child: Center(
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color(0xffffffff),
                        letterSpacing: -0.3858822937011719,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
