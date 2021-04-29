import 'package:flutter/material.dart';
import 'package:hobbies_ui_design/Model/model.dart';
import 'package:hobbies_ui_design/SizeConfig/SizeConfig.dart';
import 'package:hobbies_ui_design/Styles/Mystyles.dart';

class ContainerTile extends StatefulWidget {
  @override
  _ContainerTileState createState() => _ContainerTileState();
}

class _ContainerTileState extends State<ContainerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40 * SizeConfig.heightMultiplier,
      width: 100 * SizeConfig.widthMultiplier,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Positioned(
            bottom: 1,
            child: Container(
              height: 15 * SizeConfig.heightMultiplier,
              width: 90 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                  color: Color(0xfff5c9a1),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 5 * SizeConfig.widthMultiplier,
                    top: 4 * SizeConfig.heightMultiplier,
                    right: 5 * SizeConfig.widthMultiplier),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Skate ",
                          style: MyTextStyles.headline5.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                          ),
                        ),
                        Text(
                          " . ",
                          style: MyTextStyles.headline5.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                          ),
                        ),
                        Text(
                          "Basics",
                          style: MyTextStyles.headline5.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                          ),
                        ),
                        SizedBox(
                          width: 40 * SizeConfig.widthMultiplier,
                        ),
                        Text(
                          "60%",
                          style: MyTextStyles.headline5.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2 * SizeConfig.heightMultiplier,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 100 * SizeConfig.widthMultiplier,
                          height: 1 * SizeConfig.heightMultiplier,
                          color: Colors.white,
                        ),
                        Container(
                            width: 60 * SizeConfig.widthMultiplier,
                            height: 1 * SizeConfig.heightMultiplier,
                            color: Color(0xffff923d)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 27 * SizeConfig.heightMultiplier,
            width: 100 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 2 * SizeConfig.widthMultiplier,
                  vertical: 1 * SizeConfig.heightMultiplier),
              child: Column(
                children: [
                  SizedBox(
                    height: 1 * SizeConfig.heightMultiplier,
                  ),
                  Row(
                    children: [
                      Text(
                        "Top Hobbies",
                        style: MyTextStyles.headline5.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 2.4 * SizeConfig.textMultiplier),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1 * SizeConfig.heightMultiplier,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    //color: Colors.pink,
                    height: 20 * SizeConfig.heightMultiplier,
                    child: ListView.builder(
                        itemCount: myHobbies.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                height: 15 * SizeConfig.heightMultiplier,
                                width: 30 * SizeConfig.widthMultiplier,
                                decoration: BoxDecoration(
                                    color: Colors.blue[50],
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image:
                                          AssetImage(myHobbies[index].imgUrl),
                                    )),
                              ),
                              SizedBox(
                                height: 1 * SizeConfig.heightMultiplier,
                              ),
                              Text(
                                myHobbies[index].title,
                                style: MyTextStyles.headline5.copyWith(
                                    color: Colors.black,
                                    fontSize: 2.5 * SizeConfig.textMultiplier),
                              )
                            ],
                          );
                        }),
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
