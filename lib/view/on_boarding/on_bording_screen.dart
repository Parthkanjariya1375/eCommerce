import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_ecommerce/models/on_board_model.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/auth/sign_in.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  PageController controller = PageController();
  int currentIndex = 0;
  final List<OnBoardModel> onBoardList = [
    OnBoardModel(
      title: "Choose Products",
      descreption:
          "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit.",
      image: "assets/1_onboarding.png",
    ),
    OnBoardModel(
      title: "Make Payment",
      descreption:
          "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit.",
      image: "assets/2_onboarding.png",
    ),
    OnBoardModel(
      title: "Get Your Order",
      descreption:
          "Amet minim mollit non deserunt ullamco est\nsit aliqua dolor do amet sint. Velit officia\nconsequat duis enim velit mollit.",
      image: "assets/3_onboarding.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${currentIndex + 1}/${onBoardList.length}"),

                  TextButton(
                    onPressed: () {
                      context.goToNextWithReplace(SignIn());
                    },
                    child: Text("Skip"),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  var model = onBoardList[index];
                  String title = model.title;
                  String desc = model.descreption;
                  String image = model.image;
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 15,
                    children: [
                      Image.asset(image),
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(desc),
                    ],
                  );
                },
                controller: controller,
                itemCount: onBoardList.length,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  currentIndex == 0
                      ? SizedBox.shrink()
                      : TextButton(
                          onPressed: () {
                            if (currentIndex != 0) {
                              controller.previousPage(
                                duration: Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: Text('Previous'),
                        ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: onBoardList.length,
                    effect: ExpandingDotsEffect(),
                  ),
                  TextButton(
                    onPressed: () {
                      if (currentIndex == onBoardList.length - 1) {
                        context.goToNextWithReplace(SignIn());
                      } else {
                        controller.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: currentIndex == onBoardList.length - 1
                        ? Text('Get Started')
                        : Text('Next'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
