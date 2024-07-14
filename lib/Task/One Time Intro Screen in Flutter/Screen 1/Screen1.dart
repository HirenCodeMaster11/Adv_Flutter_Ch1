import 'package:adv_flutter_ch1/Task/One%20Time%20Intro%20Screen%20in%20Flutter/HomeScreen/home.dart';
import 'package:adv_flutter_ch1/Task/One%20Time%20Intro%20Screen%20in%20Flutter/Provider/Provider.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    PageProvider pageProviderFalse =
        Provider.of<PageProvider>(context, listen: false);
    PageProvider pageProviderTrue =
        Provider.of<PageProvider>(context, listen: true);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.only(left: 26, right: 26),
          child: PageView(
            controller: pageProviderTrue.pageController,
            onPageChanged: (index) {
              pageProviderFalse.pageViewController(index);
            },
            scrollDirection: Axis.horizontal,
            children: [
              buildPageContent(context, 'assets/1.png', 'Want to invest?', h, w,
                  pageProviderTrue,pageProviderFalse),
              buildPageContent(context, 'assets/2.png', 'Explore the options.',
                  h, w, pageProviderTrue,pageProviderFalse),
              buildPageContent(context, 'assets/3.png', 'Relax & Join us', h, w,
                  pageProviderTrue,pageProviderFalse),
            ],
          )),
    );
  }

  Widget buildPageContent(BuildContext context, String imagePath, String text,
      double h, double w, PageProvider pageProviderTrue,PageProvider pageProviderFalse) {
    return Column(
      children: [
        SizedBox(
          height: h * 0.13,
        ),
        Container(
          height: h * 0.42,
          width: double.infinity,
          color: Colors.white,
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage(imagePath),
          ),
        ),
        SizedBox(
          height: h * 0.08,
        ),
        Text(
          text,
          style: TextStyle(color: Color(0xff6d63cd), fontSize: w * 0.088),
        ),
        SizedBox(
          height: h * 0.038,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
            style: TextStyle(
                color: Colors.grey,
                fontSize: w * 0.046,
                fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(
          height: h * 0.056,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: Colors.grey, fontSize: w * 0.038),
              ),
            ),
            GestureDetector(
              onTap: () {
                if(pageProviderTrue.currentPage == 2) {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: HomeScreen(),
                        type: PageTransitionType.rightToLeft),
                  );
                  pageProviderFalse.removeScreen();
                }
                else
                  {
                    pageProviderTrue.pageController.animateToPage(
                      pageProviderTrue.currentPage +
                          1,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
              },
              child: Container(
                height: h * 0.05,
                width: w * 0.23,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 2,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.044,
                        width: w * 0.09,
                        decoration: BoxDecoration(
                          color: Color(0xfffece2e),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.blueGrey,
                          size: w * 0.067,
                        ),
                      ),
                      Text(
                        'Next',
                        style: TextStyle(fontSize: w * 0.036),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: h * 0.044,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Consumer<PageProvider>(
              builder: (context, provider, child) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: h * 0.018,
                  width: provider.currentPage == index ? w * 0.03 : w * 0.02,
                  decoration: BoxDecoration(
                    color: provider.currentPage == index
                        ? Color(0xff6d63cd)
                        : Colors.grey.shade300,
                    shape: BoxShape.circle,
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}