import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:fitandfresh/constants/screens.dart';
import 'package:sizer/sizer.dart';

import '../../constants/widgets/customTextField.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 3.h,
          ),
          Container(
            height: 28.h,
            width: 60.w,
            child: Image.asset(
              logoPath,
            ),
          ),
      Center(
        child: Text(
          'Creat New Account',
          style: TextStyle(
              fontSize: 15.0.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),

      ),
          SizedBox(
            height: 5.0.h,
          ),
          CustomTextField(name: 'Name',hint: 'Enter Your Full Name',iconData: Icons.person,),
          CustomTextField(name: 'Email',hint: 'Enter Your Email',iconData: Icons.email,),
          CustomTextField(name: 'phone',hint: 'Number',iconData: Icons.mobile_friendly,),
          CustomTextField(name: 'Password',hint: 'Enter Your Password',iconData: Icons.lock,),
          Container(
            height: 7.h,
            width: 85.w,
            child: Center(child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, homePath);

                },

                child: Text('sign up',style: TextStyle(color: Colors.white,fontSize: 15.sp,),))),
            decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green) ,

          ),
          SizedBox(height: 2.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t Have An Account ?',style: TextStyle(color: Colors.black,fontSize: 10.sp,fontWeight: FontWeight.bold),),
              SizedBox(width: 2.w,),
              Text('SignUp',style: TextStyle(color: Colors.lightGreen,fontSize: 10.sp),)


            ],
          ),



        ],
      ),
    ),

      ));
  }
}
