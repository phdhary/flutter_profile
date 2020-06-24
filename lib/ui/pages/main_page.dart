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
              ListView(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Navbar(),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(deviceWidth * 0.1,
                          deviceHeight * 0.25, deviceWidth * 0.1, 0),
                      child: Text(
                        'I am Hary Prihadi.',
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(deviceWidth * 0.1,
                          deviceHeight * 0.02, deviceWidth * 0.1, 0),
                      child: Text(
                        'Flutter Dev and love to play guitar.',
                        style: grayTextFont,
                      ),
                    ),
                  ),
                  Container(
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: Wave2Clipper(),
                          child: Container(
                            width: double.infinity,
                            height: deviceHeight * 0.5,
                            color: Colors.blue[100],
                          ),
                        ),
                        ClipPath(
                          clipper: WaveClipper(),
                          child: Container(
                            width: double.infinity,
                            height: deviceHeight * 0.5,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(deviceWidth * 0.1,
                          deviceHeight * 0.1, deviceWidth * 0.1, 0),
                      child: Text(
                        'Specializing in',
                        style: TextStyle(fontSize: 50),
                      ),
                    ),
                  ),
                ],
              ),
              // Positioned(
              //   left: deviceWidth * 0.1,
              //   top: deviceHeight * 0.5,
              //   child: Container(
              //     child: Column(
              //       children: [
              //         Container(
              //           margin: EdgeInsets.only(bottom: deviceHeight * 0.05),
              //           width: 30,
              //           height: 30,
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //                 image: AssetImage('assets/images/wa.png')),
              //           ),
              //         ),
              //         Container(
              //           width: 30,
              //           height: 30,
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //                 image: AssetImage('assets/images/telegram.png')),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
