
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_daily_fitness_app_ui/common/color_constants.dart';
import 'package:flutter_daily_fitness_app_ui/common/config.dart';
import 'package:flutter_daily_fitness_app_ui/common/constants.dart';
import 'package:flutter_daily_fitness_app_ui/custom_widgets/plan_list_widget.dart';

class PlanScreen extends StatelessWidget {
  const PlanScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: ColorConstants.kwhiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    SizeConfig().init(context);
    var screenwidth = MediaQuery.of(context).size.width - 20;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.subject,
                  color: ColorConstants.kblackColor,
                ),
                Container(
                  height: SizeConfig.blockSizeVertical * 5,
                  width: SizeConfig.blockSizeHorizontal * 10,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/person.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Plan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: ColorConstants.kblackColor,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: ColorConstants.kgreyColor,
                        borderRadius: BorderRadius.circular(5 / 2),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: ColorConstants.kgreyColor,
                        borderRadius: BorderRadius.circular(5 / 2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: List.generate(
                Constants.strList.length,
                (index) {
                  return PlanListWidget(
                    Constants.imgpList[index],
                    Constants.strPlanList[index],
                    Constants.subPlanList[index],
                    Constants.colorpList[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Weekly Challange",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: ColorConstants.kblackColor,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorConstants.kRemainingColor,
              ),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: screenwidth / 7,
                    decoration: BoxDecoration(
                      color: ColorConstants.kCompletionColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Mon",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: screenwidth / 7,
                    decoration: BoxDecoration(
                      color: ColorConstants.kCompletionColor,
                    ),
                    child: Center(
                      child: Text(
                        "Tue",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: screenwidth / 7,
                    decoration: BoxDecoration(
                      color: ColorConstants.kCompletionColor,
                    ),
                    child: Center(
                      child: Text(
                        "Wed",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: screenwidth / 7,
                    decoration: BoxDecoration(
                      color: ColorConstants.kCompletionColor,
                    ),
                    child: Center(
                      child: Text(
                        "Thu",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorConstants.kCompletionColor,
                          ColorConstants.kRemainingColor,
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: Container(
                      height: 60,
                      width: screenwidth / 7,
                      decoration: BoxDecoration(
                        color: ColorConstants.kDaysColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          "Fri",
                          style: TextStyle(
                            fontSize: 14,
                            color: ColorConstants.kwhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: screenwidth / 7,
                    decoration: BoxDecoration(
                      color: ColorConstants.kRemainingColor,
                    ),
                    child: Center(
                      child: Text(
                        "Sat",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorConstants.kRemainfontColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: screenwidth / 7,
                    decoration: BoxDecoration(
                      color: ColorConstants.kRemainingColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Sun",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorConstants.kRemainfontColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: ColorConstants.kCompletionColor,
                            borderRadius: BorderRadius.circular(
                              10 / 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "80% Completion",
                          style: TextStyle(
                            fontSize: 17,
                            color: ColorConstants.kblackColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: ColorConstants.kDaysColor,
                            borderRadius: BorderRadius.circular(
                              10 / 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "2 Days left",
                          style: TextStyle(
                            fontSize: 17,
                            color: ColorConstants.kblackColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
