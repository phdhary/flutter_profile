part of '../pages.dart';

class MainPageTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var children = [
      Expanded(
        child: Container(),
      ),
      AppDrawer(),
    ];
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait
          ? Column(
              children: children,
            )
          : Row(
              // children: children.reversed.toList(),
              children: children,
            ),
    );
  }
}
