

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_daily_fitness_app_ui/screen/home_page_screen.dart';
import 'package:flutter_daily_fitness_app_ui/screen/plan_screen.dart';

class CurrentScreenIndex extends StatelessWidget {
  int index;
  CurrentScreenIndex(this.index);
  @override
  Widget build(BuildContext context) {
    if (index == 0) return HomePageScreen();
    if (index == 1) return HomePageScreen();
    if (index == 2) return PlanScreen();
    if (index == 3) return PlanScreen();
  }
}
