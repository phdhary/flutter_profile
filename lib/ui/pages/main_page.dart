part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: backgroundColor,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Navbar(),
                  Container(
                    margin: EdgeInsets.fromLTRB(deviceWidth * 0.1,
                        deviceHeight * 0.25, deviceWidth * 0.1, 0),
                    child: Text(
                      'I am Hary Prihadi.',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(deviceWidth * 0.1,
                        deviceHeight * 0.02, deviceWidth * 0.1, 0),
                    child: Text(
                      'Flutter Dev and love to play guitar.',
                      style: grayTextFont,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
