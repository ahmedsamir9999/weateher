import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/const/style.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/services/services.dart';

class SearchScreen extends StatelessWidget {

  final ser = Services();
  VoidCallback? updateUi ;

  SearchScreen({this.updateUi });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  Search a city',
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,)),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: TextFormField(
            onFieldSubmitted: (value)async
            {
            WeatherModel weather = await ser.getWeather(city: value);
              weatherData = weather ;
              updateUi!();
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 32.sp , horizontal: 24.sp),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.sp),
                borderSide: BorderSide(width: 2.w ) ,
              ),
              suffixIcon: Icon(Icons.search,size: 20.sp,),
              hintText: 'Enter a city',
            ),
          ),
        ),
      ),
    );
  }
}
