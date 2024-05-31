import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPackageWidget extends StatelessWidget {
  final String packageName;
  final String packagePrice;
  final String packageDuration;
  final Function buttonOntap;
  final String quickStartText;
  final Function quickStartButtonOnTap;
  final Color headerBackgroundColor;
  final Color centerBackgroundColor;
  final Color bodyBackgroundColor;
  final Color buttonbackgroundColor;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final String text1;
  final String text2;

  final String text3;

  final String text4;

  const CustomPackageWidget({
    super.key,
    required this.packageName,
    required this.packagePrice,
    required this.packageDuration,
    required this.buttonOntap,
    required this.quickStartText,
    required this.quickStartButtonOnTap,
    this.headerBackgroundColor = Colors.amber,
    this.centerBackgroundColor = const Color(0xFF432EB3),
    this.bodyBackgroundColor = Colors.white,
    this.buttonbackgroundColor = const Color(0xFF432EB3),
    required this.buttonText,
    this.buttonTextStyle,
    this.text1 = '24/7 Customer Support',
    this.text2 = '100+ Audio Calls',
    this.text3 = '200+ Video Calls',
    this.text4 = '100+ Mintues',
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var orientation = MediaQuery.of(context).orientation;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: Get.width,
            height: Get.height / 12,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: headerBackgroundColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20.0)),
            ),
            child: Text(
              packageName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Container(
            width: Get.width,
            height: Get.height / 5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: centerBackgroundColor.withOpacity(0.8),
              // borderRadius:
              //     const BorderRadius.vertical(top: Radius.circular(10.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  packagePrice,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  packageDuration,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            height: orientation == Orientation.landscape
                ? Get.height / 2
                : Get.height / 3,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: bodyBackgroundColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  text2,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  text3,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  text4,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                //custom button
                GestureDetector(
                  onTap: () => buttonOntap,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 200.0,
                    decoration: BoxDecoration(
                      color: buttonbackgroundColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      buttonText,
                      textAlign: TextAlign.center,
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                //
                InkWell(
                  onTap: () => quickStartButtonOnTap,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        quickStartText,
                        style: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.green,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_right_alt_outlined,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
