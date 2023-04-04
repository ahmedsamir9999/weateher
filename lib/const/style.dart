


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../model/weather_model.dart';

class K
{
  static const primaryColor =Colors.grey ;
//  static const mainColor = Colors.grey ;
  static const blackColor = Colors.black ;
  static const whiteColor = Colors.white ;

  static final sizeBoxH = SizedBox(height:25.h  );
  static final sizeBoxW = SizedBox(width:25.w );


  static final boxDecoration = BoxDecoration(
    border: Border.all(
      color: primaryColor ,
      width: 2.w ,
    ),
    borderRadius: BorderRadius.circular(10.r),
  );
}

WeatherModel? weatherData ;