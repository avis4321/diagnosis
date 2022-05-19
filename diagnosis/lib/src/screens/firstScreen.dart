import 'package:diagnosis/src/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:diagnosis/src/sharedManager.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  FirstScreenState createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  static const List<String> expertiseTypes = ["Beginner", "Medium", "Expert"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SharedManager().showProgressBar(1, width - 110),
            const SizedBox(height: 20),
            Text(
              'translateSimpleSentence'.tr,
              style: const TextStyle(
                fontSize: 18.0,
                fontFamily: 'NunitoSans-Bold',
                fontWeight: FontWeight.w700,
                color: warmGreyTwoColor,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'howAreYou'.tr,
              style: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'answer'.tr,
              style: const TextStyle(
                fontSize: 14.0,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const FirstScreen(),
                  //   ),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  primary: lightIndigoColor,
                ),
                child: Text(
                  "continue".tr,
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
      ),
    );
  }
}
