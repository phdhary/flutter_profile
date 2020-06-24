part of 'widgets.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                deviceWidth * 0.1, deviceHeight * 0.05, deviceWidth * 0.1, 0),
            child: Text('Hary'),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                0, deviceHeight * 0.05, deviceWidth * 0.1, 0),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: deviceWidth * 0.05),
                  child: Text(
                    'Home',
                    style: grayTextFont,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: deviceWidth * 0.05),
                  child: Text(
                    'About',
                    style: grayTextFont,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: deviceWidth * 0.1),
                  child: Text(
                    'Me',
                    style: grayTextFont,
                  ),
                ),
                RaisedButton(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  color: Colors.blue,
                  child: Text(
                    'Hire Me',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
