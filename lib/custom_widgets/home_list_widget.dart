import 'package:flutter/material.dart';

class HomeListWidget extends StatelessWidget {
  final String imgpath, title, subtitle, timer;
  final Color color;
  const HomeListWidget({
    Key key,
    this.imgpath,
    this.title,
    this.subtitle,
    this.timer,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 50,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xfffafafa),
            ),
            height: 70,
          ),
          subtitle.length == 0
              ? Material(
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 5,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 5,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      imgpath,
                                      width: 50,
                                      height: 50,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: Text(
                                title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 0, left: 0, right: 15),
                          alignment: Alignment.center,
                          child: Text(
                            timer,
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 10, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Material(
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 5,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: color,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 5,
                                    top: 5,
                                    bottom: 5,
                                  ),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      imgpath,
                                      width: 50,
                                      height: 50,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 17, left: 5),
                                  child: Text(
                                    title,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Colors.black),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 5, left: 5),
                                  child: Text(
                                    subtitle,
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 5, left: 0, right: 15),
                              alignment: Alignment.center,
                              child: Text(
                                timer,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
