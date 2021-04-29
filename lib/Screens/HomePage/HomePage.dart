import 'package:flutter/material.dart';
import 'package:hobbies_ui_design/Model/model.dart';
import 'package:hobbies_ui_design/Screens/HomePage/containerTile.dart';
import 'package:hobbies_ui_design/Screens/HomePage/hobbiesList.dart';
import 'package:hobbies_ui_design/SizeConfig/SizeConfig.dart';
import 'package:hobbies_ui_design/Styles/Mystyles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation, _transformmationAnim, _appbarAnimat, _animation2;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    _animation = Tween(
            begin: 1 * SizeConfig.heightMultiplier,
            end: 15.0 * SizeConfig.heightMultiplier)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.bounceInOut));
    _animation2 = Tween(
      begin: 30.0 * SizeConfig.heightMultiplier,
      end: 1 * SizeConfig.heightMultiplier,
    ).animate(CurvedAnimation(
        parent: _animationController, curve: Curves.bounceInOut));

    _transformmationAnim = BorderRadiusTween(
            begin: BorderRadius.circular(125.0),
            end: BorderRadius.circular(0.0))
        .animate(
            CurvedAnimation(parent: _animationController, curve: Curves.ease));
    _appbarAnimat = Tween(begin: 0.1, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Scaffold(
                  body: Container(
                      height: 100 *
                          (SizeConfig.isPortrait
                              ? SizeConfig.heightMultiplier
                              : SizeConfig.widthMultiplier),
                      child: mainbody()));
            }));
  }

  Widget mainbody() {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 67.9 * SizeConfig.heightMultiplier,
              width: 100 * SizeConfig.widthMultiplier,
              color: Color(0xfff8e8d9),
            ),
            Container(
              height: 20 * SizeConfig.heightMultiplier,
              width: 100 * SizeConfig.widthMultiplier,
              color: Color(0xffeaebec),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 2 * SizeConfig.heightMultiplier,
            left: 5 * SizeConfig.widthMultiplier,
            right: 5 * SizeConfig.widthMultiplier,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Opacity(
                opacity: _appbarAnimat.value,
                child: Text(
                  "Hello!",
                  style: MyTextStyles.headline5
                      .copyWith(fontSize: 5 * SizeConfig.textMultiplier),
                ),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  Container(
                    height: 6 * SizeConfig.heightMultiplier,
                    width: 7 * SizeConfig.heightMultiplier,
                    child: Stack(
                      children: [
                        Positioned(
                          right: 1,
                          child: Container(
                            height: 3 * SizeConfig.heightMultiplier,
                            width: 3 * SizeConfig.heightMultiplier,
                            decoration: BoxDecoration(
                                color: Colors.amber, shape: BoxShape.circle),
                          ),
                        ),
                        Icon(
                          Icons.cloud_done_rounded,
                          color: Colors.white,
                          size: 10 * SizeConfig.imageSizeMultiplier,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 2 * SizeConfig.widthMultiplier,
                  ),
                  Text(
                    "Cloud",
                    style: MyTextStyles.headline5
                        .copyWith(fontSize: 3 * SizeConfig.textMultiplier),
                  ),
                  SizedBox(
                    width: 45 * SizeConfig.widthMultiplier,
                  ),
                  Text(
                    "24 C",
                    style: MyTextStyles.headline5.copyWith(
                        fontSize: 3 * SizeConfig.textMultiplier,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              Container(
                height: 40 * SizeConfig.heightMultiplier,
                width: 100 * SizeConfig.widthMultiplier,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
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
                                    width: 35 * SizeConfig.widthMultiplier,
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
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
                                      fontSize:
                                          2.4 * SizeConfig.textMultiplier),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 1 * SizeConfig.heightMultiplier,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                //color: Colors.pink,
                                height: 20 * SizeConfig.heightMultiplier,
                                child: ListView.builder(
                                    itemCount: myHobbies.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            width: _animation.value,
                                            height: _animation.value,
                                            decoration: BoxDecoration(
                                                color: Colors.blue[50],
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      myHobbies[index].imgUrl),
                                                )),
                                          ),
                                          SizedBox(
                                            height:
                                                1 * SizeConfig.heightMultiplier,
                                          ),
                                          Text(
                                            myHobbies[index].title,
                                            style: MyTextStyles.headline5
                                                .copyWith(
                                                    color: Colors.black,
                                                    fontSize: 2.5 *
                                                        SizeConfig
                                                            .textMultiplier),
                                          )
                                        ],
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Text(
                "Top Hobbies",
                style: MyTextStyles.headline5.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 2.4 * SizeConfig.textMultiplier),
              ),
              //  HobbiesList()
              Transform(
                transform: Matrix4.translationValues(
                  0.0,
                  _animation2.value,
                  0.0,
                ),
                child: Container(
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding:
                                EdgeInsets.all(1 * SizeConfig.heightMultiplier),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 12 * SizeConfig.heightMultiplier,
                                      width: 12 * SizeConfig.widthMultiplier,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.blue[50],
                                          image: DecorationImage(
                                            image: AssetImage(
                                                myHobbies[index].imgUrl),
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
                                      fontSize:
                                          1.5 * SizeConfig.textMultiplier),
                                ),
                                Text(
                                  myHobbies[index].description,
                                  style: MyTextStyles.headline5.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey,
                                      fontSize:
                                          1.5 * SizeConfig.textMultiplier),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
