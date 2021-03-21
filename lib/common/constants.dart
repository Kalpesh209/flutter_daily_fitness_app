
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_daily_fitness_app_ui/common/color_constants.dart';

class Constants {
  static List<String> cardList = [
    "assets/images/challenge.png",
    "assets/images/yoga.png",
  ];
  static List<String> imgList = [
    "assets/images/hydration.png",
    "assets/images/yoga.png",
    "assets/images/exercises.png",
    "assets/images/breakfast.png",
  ];

  static List<String> imgpList = [
    "assets/images/yoga.png",
    "assets/images/fruit.png",
    "assets/images/exercises.png",
    "assets/images/hydration.png",
  ];

  static List<String> strList = [
    "Hydration",
    "Yoga",
    "Exercises",
    "Breakfast",
  ];

  static List<String> subList = [
    "250 ml",
    "45 min",
    "30 min",
    "",
  ];

  static List<String> timerList = [
    "5:30 Am",
    "6:30 Am",
    "7:30 Am",
    "8:00 Am",
  ];

  static List<String> strPlanList = [
    "Yoga",
    "Fruits",
    "Exercises",
    "Hydration",
  ];

  static List<String> subPlanList = [
    "3 Type of Yoga",
    "2 Apple a Day",
    "8 Excercises",
    "6 Cups a Day",
  ];

  static List<Color> colorList = [
    ColorConstants.kprimaryColor,
    ColorConstants.kpurpleColor,
    ColorConstants.kpinkColor,
    ColorConstants.kyellowColor,
  ];

  static List<Color> colorpList = [
    ColorConstants.kppinkColor,
    ColorConstants.kppinkLightColor,
    ColorConstants.kppinkDarkColor,
    ColorConstants.kppurpleColor,
  ];

  static List<Icon> iconList = [
    Icon(
      Icons.radio_button_checked,
      color: Colors.black,
    ),
    Icon(
      Icons.radio_button_checked,
      color: Colors.grey,
    ),
    Icon(
      Icons.radio_button_checked,
      color: Colors.grey,
    ),
    Icon(
      Icons.radio_button_checked,
      color: Colors.grey,
    ),
  ];
}
