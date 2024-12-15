import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:sizer/sizer.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SingleChildScrollView(

    child: Column(

    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [


    Container(


    height: 40.h,
    width:double.infinity,

    child: Image.asset(
    mixgrilImage,
    ),




    ),
      Text('mix grill',style: TextStyle(fontSize: 28.sp,fontWeight: FontWeight.bold,color: Colors.black),),
      SizedBox(height: 1.h,),
      Text('Lorem Iptum dolor sit amet, Doncetetur cadipocing el tr, tad diam nonumy birmad  unt  at dolors magna all yam arat, cad allam veluptua. At no cos takirata sanabus att Lorom Iptum dolor sit amet. Loesm Ipsum dolor sit',style: TextStyle(fontWeight: FontWeight.w400),),
      SizedBox(height: 4.h,),
      Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.lightGreen,
              ),
              Positioned(top: 1,right: 7,
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: Text('632',style: TextStyle(color: Colors.black),),
              ),
              ),






            ],
          ),




          SizedBox(width: 4.w,),
          Stack(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.lightGreen,
              ),
              Positioned(top:1,right: 7,
                child: CircleAvatar(
                  radius:35,
                  backgroundColor: Colors.white,
                  child: Text('100',style: TextStyle(color: Colors.black),),

                ),
              )

            ],
          ),
          SizedBox(width: 4.w,),
          Stack(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.lightGreen,
              ),
              Positioned(top: 1,right: 7,
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Text('13',style: TextStyle(color: Colors.black),),

                ),
              )

            ],
          ),
          SizedBox(width: 4.w,),
          Stack(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.lightGreen,
              ),
              Positioned(top: 5,right: 7,
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Text('20',style: TextStyle(color: Colors.black),),

                ),
              )

            ],
          ),

        ],
      ),
      SizedBox(height: 5.h,),
      Container(
        height: 9.h,
        width: 90.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('side 1',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18.sp),

              ),



          Text('Required',style: TextStyle(color: Colors.grey ,fontSize: 11.sp)),


            ],
          ),


        ),


      ),

    ] ),
    ),
        )    );
  }
}
