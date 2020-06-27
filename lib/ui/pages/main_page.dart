part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                color: Colors.lightBlue,
                child: BaseWidget(
                  builder: (context, sizingInformation) {
                    return Text(sizingInformation.toString());
                  },
                ),
              ),
              Center(
                child: Text(sizingInformation.toString()),
              ),
            ],
          ),
        );
      },
    );
  }
}
