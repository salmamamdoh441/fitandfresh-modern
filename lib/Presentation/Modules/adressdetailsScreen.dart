import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/screens.dart';
import 'package:sizer/sizer.dart';

import '../../constants/widgets/customTextField.dart';
class AdressDetailsScreen extends StatefulWidget {
  const AdressDetailsScreen({Key? key}) : super(key: key);

  @override
  _AdressDetailsScreenState createState() => _AdressDetailsScreenState();
}

class _AdressDetailsScreenState extends State<AdressDetailsScreen> {
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
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back,size: 20.sp,),

                         SizedBox(width: 20.w,),
                        Text('Adress Details', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                      ],
                    ),
                  )
                    ,
                ),

                SizedBox(
                  height: 3.h,
                ),



                SizedBox(
                  height: 5.0.h,
                ),
                CustomTextField(name: 'Name',hint: ' Full Name',iconData: Icons.person,),
                CustomTextField(name: 'Phone',hint: 'Enter Your Phone Number',iconData: Icons.phone_in_talk,),
                CustomTextField(name: 'Location',hint: 'Search For Location',iconData: Icons.location_on,),
                CustomTextField(name: 'Street',hint: 'Street Name',iconData: Icons.streetview,),
                CustomTextField(name: 'Special Mark',hint: 'Something Close To You',iconData: Icons.folder_special,),

                Container(
                  height: 7.h,
                  width: 85.w,
                  child: Center(child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, mapPath);

                      },
                      child: Text('Confirm Order',style: TextStyle(color: Colors.white,fontSize: 15.sp,),))),
                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.lightGreen) ,

                ),






              ],
            ),
          ),

        ));
  }
}
