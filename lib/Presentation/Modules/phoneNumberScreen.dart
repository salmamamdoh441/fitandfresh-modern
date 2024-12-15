import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:fitandfresh/constants/screens.dart';
import 'package:sizer/sizer.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({Key? key}) : super(key: key);

  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
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
                    'Continue With Phone Number',
                    style: TextStyle(
                        fontSize: 15.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w600
                    ),

                  ),
                ),
                SizedBox(
                  height: 5.0.h,
                ),

               Column(
                 children: [
                   Align(
                       alignment: Alignment.topLeft,
                       child: Text(
                        'Country',
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: 15.sp,
                             fontWeight: FontWeight.bold),
                       )),
                   SizedBox(height: 1.h,),
                   Container(
                     height: 7.h,
                     width: double.infinity,


                     child: CountryCodePicker(
                       onChanged: print,
                       initialSelection: 'eg',
                       showCountryOnly: false,
                       showOnlyCountryWhenClosed: false,
                       alignLeft: true,

                     ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),

                      border: Border.all(color: Colors.lightGreen ,),
                    ),



                   )
                 ],
               ),
               SizedBox(height: 2.h),
                Column(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Phone Number',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(height: 1.h,),
                    Container(

                      height: 7.h,
                      width: double.infinity,



                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),

                        border: Border.all(color: Colors.lightGreen ,),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                            Icons.phone,color: Colors.lightGreen,

                            size: 25.sp,
                            ),
                          ],
                        ),
                      ),




                    )
                  ],
                ),

               // CustomTextField(name: 'Phone Number',hint: '',iconData: Icons.phone,),
            SizedBox(height: 5.h,),
            Container(
                height: 7.h,
                width: double.infinity,
                child: Center(child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, verifyPath);

                    },
                    child: Text('continue',style: TextStyle(color: Colors.white,fontSize: 15.sp,),))),
                decoration:BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.lightGreen) ,
            )]),
          ),

        ));
  }
}
