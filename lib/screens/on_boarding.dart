import 'package:evently_app/screens/login_screen.dart';
import 'package:evently_app/widgets/introduction_screen.dart';
import 'package:evently_app/widgets/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  static String routeName = 'Onboarding';

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int index = 0;
  late final pageController = PageController(
    initialPage: index,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 932.h,
        child: PageView(
          controller: pageController,
          onPageChanged: (position) {
            setState(() {
              index = position;
            });
          },
          children: [
            IntroductionScreen(
              navigate: navigationForward,
            ),
            OnBoarding_widget(
              navigate: navigationForward,
              image: 'assets/images/onboarding1.png',
              title: 'Discover Movies',
              desc:
                  'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
              index: index,
            ),
            OnBoarding_widget(
              navigate: navigationForward,
              image: 'assets/images/onboarding2.png',
              title: 'Explore All Genres',
              desc:
                  'Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.',
              index: index,
              back: navigationBackward,
            ),
            OnBoarding_widget(
              navigate: navigationForward,
              back: navigationBackward,
              image: 'assets/images/onboarding3.png',
              title: 'Create Watchlists',
              desc:
                  "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
              index: index,
            ),
            OnBoarding_widget(
              navigate: navigationForward,
              back: navigationBackward,
              image: 'assets/images/onboarding4.png',
              title: 'Rate, Review, and Learn',
              desc:
                  "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
              index: index,
            ),  OnBoarding_widget(
              navigate: navigationForward,
              back: navigationBackward,
              image: 'assets/images/onboarding5.png',
              title: 'Start Watching Now',
                index: index,
            ),
          ],
        ),
      ),
    );
  }

  navigationForward() {
    if(index<5){
      index++;
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    else{
      Navigator.pushNamed(context, LoginScreen.routeName);
    }
  }

  navigationBackward() {
    index--;
    pageController.previousPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
