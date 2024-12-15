import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:sizer/sizer.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({Key? key}) : super(key: key);

  @override
  _VerifyPhoneScreenState createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(

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
                    'Verify Phone',
                    style: TextStyle(
                        fontSize: 15.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                    ),


                  ),

                ),
                SizedBox(height: 6.h,),
                Center(
                  child: Text(
                    'Code Is Send To 01068382215',
                    style: TextStyle(
                        fontSize: 15.0.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500
                      ,
                    ),

                  ),
                ),
                SizedBox(height: 6.h,),
                OTPTextField(
                  length: 4,
                  width: MediaQuery.of(context).size.width,
                  fieldWidth: 20.w,
                  style: TextStyle(
                      fontSize: 17
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.box,
                  onCompleted: (pin) {
                    print("Completed: " + pin);
                    
                  },
                ),
                SizedBox(height: 4.h,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text('Don’t Receive Code ?',style: TextStyle(
                          fontSize: 15.0.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500)
                      ) ,
                    SizedBox(width: 1.w,),
                    Text('Resend Code',style: TextStyle(
                      fontSize: 15.0.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,

                    ),),


                ]),


                ),
                SizedBox(height: 10.h,),
                Container(

                  height: 7.h,
                  width: 85.w,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10),




                  ),
                  child: Center(child: Text('Verify And Create Account',style: TextStyle(color: Colors.white,fontSize: 15.sp),)),
                ),
              ],
                  ),
                )



            ));

  }
}
