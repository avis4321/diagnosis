import 'package:diagnosis/src/screens/firstScreen.dart';
import 'package:diagnosis/src/sharedManager.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:diagnosis/src/constants.dart';

class SelectExpertise extends StatefulWidget {
  const SelectExpertise({Key? key}) : super(key: key);

  @override
  SelectExpertiseState createState() => SelectExpertiseState();
}

class SelectExpertiseState extends State<SelectExpertise> {
  static const List<String> expertiseTypes = ["Beginner", "Medium", "Expert"];

  int radioSelectedValue = 1;

  final List locale = [
    // {'name': 'ENGLISH', 'locale': const Locale('en', 'US')},
    {'name': 'தமிழ்', 'locale': const Locale('ta', 'IN')},
    {'name': 'हिंदी', 'locale': const Locale('hi', 'IN')},
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Stack(
          children: [
            Image.asset(
              'lib/src/assets/images/background.jpg',
              fit: BoxFit.fitHeight,
              height: MediaQuery.of(context).size.height,
            ),
            Container(
              margin: const EdgeInsets.only(right: 24, top: 40),
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  showLanguageAlertDialog(context);
                },
                icon: const Icon(
                  Icons.settings,
                ),
              ),
            ),
            selectExperiseWidget(),
          ],
        ),
      ),
    );
  }

  Widget selectExperiseWidget() {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 110),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'selectExpertise'.tr,
            style: const TextStyle(
              color: warmGreyTwoColor,
              fontSize: 18.0,
              fontFamily: 'NunitoSans-Regular',
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  radioSelectedValue = 1;
                });
              },
              child: Row(
                children: [
                  Image.asset(
                    radioSelectedValue == 1
                        ? 'lib/src/assets/images/selectRadio.png'
                        : 'lib/src/assets/images/deselectRadio.png',
                    height: 19,
                    width: 19,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "beginner".tr,
                    style: const TextStyle(
                      color: warmGreyTwoColor,
                      fontSize: 14.0,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 44),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  radioSelectedValue = 2;
                });
              },
              child: Row(
                children: [
                  Image.asset(
                    radioSelectedValue == 2
                        ? 'lib/src/assets/images/selectRadio.png'
                        : 'lib/src/assets/images/deselectRadio.png',
                    height: 19,
                    width: 19,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "medium".tr,
                    style: const TextStyle(
                      color: warmGreyTwoColor,
                      fontSize: 14.0,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 44),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  radioSelectedValue = 3;
                });
              },
              child: Row(
                children: [
                  Image.asset(
                    radioSelectedValue == 3
                        ? 'lib/src/assets/images/selectRadio.png'
                        : 'lib/src/assets/images/deselectRadio.png',
                    height: 19,
                    width: 19,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "expert".tr,
                    style: const TextStyle(
                      color: warmGreyTwoColor,
                      fontSize: 14.0,
                      fontFamily: 'NunitoSans',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: ElevatedButton(
              onPressed: () {
                SharedManager().expertType = radioSelectedValue;

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FirstScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: lightIndigoColor,
              ),
              child: Text(
                "proceed".tr,
                style: const TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'NunitoSans-Bold',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  showLanguageAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (builder) {
        return AlertDialog(
          title: Text('chooseLanguage'.tr),
          content: Container(
            width: double.maxFinite,
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Text(locale[index]['name']),
                    onTap: () {
                      debugPrint(locale[index]['name']);
                      updateLanguage(locale[index]['locale']);
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.blue,
                );
              },
              itemCount: locale.length,
            ),
          ),
        );
      },
    );
  }

  updateLanguage(Locale locale) {
    Get.back();
    Get.updateLocale(locale);
  }
}
