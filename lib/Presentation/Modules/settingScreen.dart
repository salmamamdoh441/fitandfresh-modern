import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SingleChildScrollView(
    child: Column(

    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    SizedBox(height: 6.h,),
    Container(

    width: 90.w,
    height: 6.h,
    decoration: BoxDecoration(
    color: Colors.white,



    ),
    child: Center(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
      children: [
      Icon(Icons.arrow_back,size: 20.sp,),

      SizedBox(width: 22.w,),
      Text('Setting', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
      ],
      ),
    ),
    )
    ,
    ),

    SizedBox(
    height: 3.h,
    ),
      Column(children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.white,
        ),
        SizedBox(height: 2.h,),
        Text('Username',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
        Text('Username@Gmail.com',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),),


      ],),
      SizedBox(height: 4.h,),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Row(
            children: [
              Text('Account Information',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
              SizedBox(width: 44.w,),
              Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
            ],
          ),
          SizedBox(height: 1.h,),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 1,
            endIndent:1 ,
          ),
          SizedBox(height:2.h),
          Row(
            children: [
              Text('Adress Information',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
              SizedBox(width: 46.w,),
              Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
            ],
          ),
          SizedBox(height: 1.h,),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 1,
            endIndent:1 ,
          ),
          SizedBox(height:2.h),
          Row(
            children: [
              Text('Language',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
              SizedBox(width: 62.w,),
              Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
            ],
          ),
          SizedBox(height: 1.h,),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 1,
            endIndent:1 ,
          ),
          SizedBox(height:2.h),
          Row(
            children: [
              Text('Recaculate Bmr',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
              SizedBox(width: 52.w,),
              Icon(Icons.arrow_forward_ios,color: Colors.lightGreen,),
            ],
          ),
          SizedBox(height: 1.h,),
          Divider(
            color: Colors.grey,
            thickness: 2,
            indent: 1,
            endIndent:1 ,
          ),
          SizedBox(height:2.h),
          Row(
            children: [
              Text('Log Out',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w600),),
              SizedBox(width: 44.w,),

            ],
          ),






        ],
      )

    ]
    ),
    )
    )
    );
  }
}
