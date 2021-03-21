import 'package:flutter/material.dart';

class PlanListWidget extends StatelessWidget {
  final String title, subtitle, imgpath;
  final Color color;
  PlanListWidget(
    this.imgpath,
    this.title,
    this.subtitle,
    this.color,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        10.0,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              image: DecorationImage(
                image: AssetImage(
                  imgpath,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
