import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/screen/search%20screen/search_screen.dart';

import '../../const/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void updateUi()
  {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('  Weather',
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,)),
        actions: [
          IconButton(
            onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SearchScreen(updateUi: updateUi,)));
            },
              icon: const Icon(Icons.search_sharp), )
        ],
      ),
      body: weatherData == null ?
      Center(
        child: Text(
          'there is no weather start 🤔 \n          searching now 🔍',
          style: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
          :
      Container(
        color: Colors.grey,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                weatherData!.cityName.toString(),
              style:  TextStyle(
                color: K.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
            ),
            SizedBox(height: 10.h,),
            Text(
              'Update :  ${weatherData!.date.toString()}' ,
              style:  TextStyle(
                color: K.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(height: 100.h,),
            Row(
              children: [
                const Spacer(flex: 1,),
                Image.network('http:${weatherData!.iconImage.toString()}'),
                const Spacer(flex: 1,),
                Text(
                  weatherData!.temp.toString(),
                  style:  TextStyle(
                    color: K.blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.sp,
                  ),
                ),
                const Spacer(flex: 1,),
                Column(
                  children: [
                    Text(
                      weatherData!.maxTemp.toString(),
                      style:  TextStyle(
                        color: K.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Text(
                      weatherData!.minTemp.toString(),
                      style:  TextStyle(
                        color: K.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
                const Spacer(flex: 1,),
              ],
            ),
            SizedBox(height: 100.h,),
            Text(
              weatherData!.status.toString(),
              style:  TextStyle(
                color: K.blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
