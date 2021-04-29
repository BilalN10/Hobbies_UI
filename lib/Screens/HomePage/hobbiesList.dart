import 'package:flutter/material.dart';
import 'package:hobbies_ui_design/Model/model.dart';
import 'package:hobbies_ui_design/SizeConfig/SizeConfig.dart';
import 'package:hobbies_ui_design/Styles/Mystyles.dart';

class HobbiesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25 * SizeConfig.heightMultiplier,
      width: 100 * SizeConfig.widthMultiplier,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: myHobbies.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(8),
              height: 35 * SizeConfig.heightMultiplier,
              width: 35 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(1 * SizeConfig.heightMultiplier),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 12 * SizeConfig.heightMultiplier,
                          width: 12 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue[50],
                              image: DecorationImage(
                                image: AssetImage(myHobbies[index].imgUrl),
                              )),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 8 * SizeConfig.heightMultiplier,
                          width: 8 * SizeConfig.widthMultiplier,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3 * SizeConfig.heightMultiplier,
                    ),
                    Text(
                      myHobbies[index].title,
                      style: MyTextStyles.headline5.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 1.5 * SizeConfig.textMultiplier),
                    ),
                    Text(
                      myHobbies[index].description,
                      style: MyTextStyles.headline5.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                          fontSize: 1.5 * SizeConfig.textMultiplier),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
