

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/screen/splash%20screen/splash_screen.dart';
//import 'packa5ge:weather/test.dart';


void main()
{
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: const MediaQueryData(),
        child: ScreenUtilInit(
          designSize: const Size(425 , 925),
            builder: (BuildContext, Widget) => MaterialApp(
              debugShowCheckedModeBanner: false ,
            home:SplashScreen() ,
             // home: Test(),
        )));
  }
}
