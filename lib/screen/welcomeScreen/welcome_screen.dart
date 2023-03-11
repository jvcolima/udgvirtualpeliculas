import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:urban/screen/signIn/signIn_screen.dart';
import 'package:urban/utills/color.dart';
import 'package:urban/utills/images.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  int indexPage = 0;
  var currentPageValue = 0.0;
  List<Map> welcomeData = [
    {
      "image": [
        {
          "image1": person1,
          "image2": person2,
          "image3": person3,
          "image4": person4,
        },
      ],
      "title": "Beauty & Grooming",
      "description":
          "Safe and hygienic salon at home service\nfor men and  women"
    },
    {
      "image": [
        {
          "image1": person5,
          "image2": person6,
          "image3": person7,
          "image4": person4,
        },
      ],
      "title": "Painting & Renovation",
      "description":
          "Customizable budget friendly packages\nwith flexible payment option"
    },
    {
      "image": [
        {
          "image1": person8,
          "image2": person9,
          "image3": person10,
          "image4": person4,
        },
      ],
      "title": "Maintenance & Repair",
      "description": "On-demand home  maintenance services\nat your doorstep"
    }
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: Get.height / 13,
          ),
          SizedBox(
            height: Get.height > 850 ? 450 : 400,
            width: Get.width,
            child: PageView.builder(
              controller: pageController,
              itemCount: welcomeData.length,
              onPageChanged: (i) {
                setState(
                  () {
                    indexPage = i;
                  },
                );
              },
              itemBuilder: (context, index) {
                return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Get.height > 850
                          ? SizedBox(
                              height: 50,
                            )
                          : Container(),
                      indexPage == 0
                          ? AnimatedContainer(
                              transform: Matrix4.identity()
                                ..rotateX(currentPageValue - indexPage),
                              height: 350,
                              width: 332,
                              duration: Duration(seconds: 2),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 161,
                                        width: 161,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    welcomeData[index]["image"]
                                                        [0]["image1"]),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 161,
                                        width: 161,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    welcomeData[index]["image"]
                                                        [0]["image3"]),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 197,
                                        width: 161,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    welcomeData[index]["image"]
                                                        [0]["image2"]),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 123,
                                        width: 161,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    welcomeData[index]["image"]
                                                        [0]["image4"]),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          : Container(),
                      indexPage == 1
                          ? SizedBox(
                              height: 350,
                              width: 332,
                              child: Column(
                                children: [
                                  Container(
                                    height: 161,
                                    width: 331,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(welcomeData[index]
                                              ["image"][0]["image1"]),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 161,
                                        width: 161,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    welcomeData[index]["image"]
                                                        [0]["image2"]),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 161,
                                        width: 161,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    welcomeData[index]["image"]
                                                        [0]["image3"]),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      )
                                    ],
                                  )
                                ],
                              ))
                          : Container(),
                      indexPage == 2
                          ? SizedBox(
                              height: 350,
                              width: 332,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 161,
                                        width: 161,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    welcomeData[index]["image"]
                                                        [0]["image1"]),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        height: 161,
                                        width: 161,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    welcomeData[index]["image"]
                                                        [0]["image2"]),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 331,
                                    width: 161,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(welcomeData[index]
                                              ["image"][0]["image3"]),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                  ),
                                ],
                              ))
                          : Container(),
                    ]);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (position) => Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: indexPage == position ? blue : gray,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 29.7,
          ),
          Text(
            welcomeData[indexPage]["title"],
            style: const TextStyle(
                color: black, fontSize: 26, fontFamily: "RobotoBold"),
          ),
          SizedBox(
            height: Get.height / 44.55,
          ),
          Text(
            welcomeData[indexPage]["description"],
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: black, fontSize: 16, fontFamily: "RobotoRegular"),
          ),
          SizedBox(
            height: Get.height / 22.28,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: MaterialButton(
              onPressed: () {
                indexPage == 2
                    ? Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInScreen(),
                        ))
                    : pageController.nextPage(
                        duration: 300.milliseconds, curve: Curves.ease);
              },
              color: blue,
              height: 54,
              minWidth: Get.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                indexPage == 2 ? "GET STARTED" : "NEXT",
                style: const TextStyle(
                    color: white, fontSize: 16, fontFamily: "RobotoMedium"),
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 29.7,
          ),
          indexPage == 2
              ? Container()
              : InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignInScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: blue, fontSize: 16, fontFamily: "RobotoMedium"),
                  ),
                ),
        ],
      ),
    );
  }
}
