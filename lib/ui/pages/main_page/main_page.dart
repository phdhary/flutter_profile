part of '../pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: MainPageMobilePortrait(),
        landscape: MainPageMobileLandscape(),
      ),
      tablet: MainPageTablet(),
    );
  }
}
