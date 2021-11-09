import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dashboard_ui/Screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(392, 834),
        builder: () => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'DashBoardUI',
              theme: ThemeData(
                  brightness: Brightness.dark,
                  primaryColor: Colors.black,
                  fontFamily: 'Sans'),
              home: const HomeScreen(),
            ));
  }
}
