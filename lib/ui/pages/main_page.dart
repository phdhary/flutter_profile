part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Text(sizingInformation.toString()),
          ),
        );
      },
    );
  }
}
