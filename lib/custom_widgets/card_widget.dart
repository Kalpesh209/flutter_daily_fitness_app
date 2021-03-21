import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String cardImg;
  const CardWidget({
    Key key,
    this.cardImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 80,
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              cardImg,
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
