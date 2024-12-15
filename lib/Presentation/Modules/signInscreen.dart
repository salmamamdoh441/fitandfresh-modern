import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:fitandfresh/constants/screens.dart';
import 'package:fitandfresh/constants/widgets/customTextField.dart';
import 'package:sizer/sizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key, this.nextScreen}) : super(key: key);
  final Widget? nextScreen;

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Text(
                'Sign In To Continue',
                style: TextStyle(
                fontSize: 15.0.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              CustomTextField(name: 'Email',hint: 'Enter Your Email',iconData: Icons.email,),
              CustomTextField(name: 'Password',hint: 'Enter Your Password',iconData: Icons.lock,),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Forgot Password?',style: TextStyle(color:Colors.green,fontSize: 12.sp),)),
              SizedBox(height: 3.h,),
              Container(
                height: 7.h,
                width: double.infinity,
                child: Center(child: Text('login',style: TextStyle(color: Colors.white,fontSize: 15.sp,),)),
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green) ,

              ),
              SizedBox(height: 2.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t Have An Account ?',style: TextStyle(color: Colors.black,fontSize: 10.sp,fontWeight: FontWeight.bold),),
                  SizedBox(width: 2.w,),
                  InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, signUpPath);
                  },
                      child: Text('SignUp',style: TextStyle(color: Colors.green,fontSize: 10.sp),))


                ],
              ),
              SizedBox(height: 5.h,),
              Center(child: Text('-OR-',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 20.sp),)),
              SizedBox(height: 3.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 10.h,
                width: 18.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red
                ),
                child: Icon(FontAwesomeIcons.google,color: Colors.white,size: 35),
              ),
              SizedBox(width: 5.w,),
              Container(
                height: 10.h,
                width: 18.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueAccent,
                ),
                child: Icon(FontAwesomeIcons.facebook,color: Colors.white,size: 35),
              ),
              SizedBox(width: 5.w,),
              Container(
                height: 10.h,
                width: 18.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black
                ),
                child: Icon(FontAwesomeIcons.apple,color: Colors.white,size: 35),
              ),
              SizedBox(width: 5.w,),
              Container(
                height: 10.h,
                width: 18.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green
                ),
                child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, phonePath);

                    },
                    child: Icon(FontAwesomeIcons.phone,color: Colors.white,size: 35)),
              ),


            ],

          ),
       ] ),
      ),
      )    );
  }
}
