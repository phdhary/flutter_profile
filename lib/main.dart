import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:webprofile/ui/pages/pages.dart';

void main() {
  // runApp(MyApp());
  runApp(DevicePreview(
    enabled: true,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
