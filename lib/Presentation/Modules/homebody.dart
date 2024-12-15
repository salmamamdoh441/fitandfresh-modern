import 'package:badges/badges.dart' as badges;
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';

import '../../constants/screens.dart';

class HomeBody extends StatelessWidget {
  List categories = ['sandwiches', 'seafood', 'drinks','desserts','ketogenic','sides','salad','chicken','beef'];
  List images=[SandwichesImage,seafoodImage,drinksImage,DessertImage,ketogenicImage,sidesImage,saladImage,chickenImage,beefImage];

  List Colorss=[Colors.lightGreen,Colors.orange,Colors.redAccent,Colors.indigo,Colors.green,Colors.deepOrangeAccent,Colors.lime,Colors.deepOrange,Colors.brown];

   HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  children: [
                    InkWell(
                        onTap:(){
                          Scaffold.of(context).openDrawer();
                        },
                        child: Icon(Icons.menu))
                    , Spacer(),
                    Text('Home ', style: TextStyle(),),
                    Spacer(),
                    Icon(Icons.search),
                  ]
              ),
            )
            ,
            width: 20.w,
            height: 5.h,
            decoration: BoxDecoration(
              color: Colors.white,



            ),

          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                'category',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              ),

            ],
          ),
        ),
        Container(height: 18.h,
          width: 30 ,

          child: ListView.builder(scrollDirection: Axis.horizontal,
              itemCount: 9,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      height: 90.h,
                      width: 27.w,

                      decoration: BoxDecoration(
                        color: Colorss[index],
                        borderRadius: BorderRadius.circular(10),



                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            children: [
                              Text(categories[index],style: TextStyle(fontSize: 12.sp,color: Colors.white),),
                              SizedBox(height: 1.h,),
                              Image.asset(images[index])



                            ])
                        ,
                      ),

                    )
                );
              }),
        ),
        SizedBox(height: 5.h,),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),

              child: Padding(
                padding: const EdgeInsets. symmetric(horizontal: 15),
                child: Text('best seller',
                  style: TextStyle(color: Colors.black, fontSize: 15.sp),),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('see more',
                style: TextStyle(fontSize: 12.sp, color: Colors.grey[800]),),
            ),


          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(

                height: 30.h,
                width: 44.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.white,

                        ),
                        badgeContent: Icon(Icons.favorite,size: 15.sp,color: Colors.red,),
                        child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, productPath);
                            },

                            child: Image.asset(mixgrilImage)),


                        position: BadgePosition.topEnd(top: 3, end:125),



                      ),

                      SizedBox(height: 4.h,),
                      Text('mix grill ',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),),

                      RatingBar.builder(itemSize: 13.sp,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,

                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Row(
                        children: [
                          Text('115 ',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 10.sp),),
                          SizedBox(width: 1.w,),
                          Text('EGP ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.sp),),
                          SizedBox(
                            width: 10.w,

                          ),
                          Container(
                            height: 4.h,
                            width: 10.w,
                            decoration: BoxDecoration(

                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(10)),



                            child: Icon(
                              Icons.add_shopping_cart,size: 24.sp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),


                    ],
                  ),



                ),



              ),
              SizedBox(width: 2.w,),
              Container(

                height: 30.h,
                width: 44.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [



                      badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Colors.white,

                          ),
                          badgeContent: Icon(Icons.favorite,size: 15.sp,color: Colors.red,),



                          position: BadgePosition.topEnd(top: 3, end:125),



                          child: Image.asset(mixseafoodImage)),
                      SizedBox(height: 2.h,),
                      Text('mix seafood ',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),),

                      RatingBar.builder(itemSize: 13.sp,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,

                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Row(
                        children: [
                          Text('115 ',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 10.sp),),
                          SizedBox(width: 1.w,),
                          Text('EGP ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.sp),),
                          SizedBox(
                            width: 10.w,

                          ),
                          Container(
                            height: 4.h,
                            width: 10.w,
                            decoration: BoxDecoration(

                                color: Colors.lightGreen,
                                borderRadius: BorderRadius.circular(10)),



                            child: Icon(
                              Icons.add_shopping_cart,size: 24.sp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),


                    ],
                  ),



                ),



              ),
            ],


          ),
        ),



        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: 20.h,
            width: 22.w,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10),
              color: Colors.lightGreen,



            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('Healthy Food',style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),

                      Text('For Busy People',style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                      SizedBox(height: 3.h,),
                      Container(
                        height: 5.h,
                        width: 30.w,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: Center(child: Text('View Our Menu',style: TextStyle(color: Colors.white,fontSize: 10.sp,fontWeight: FontWeight.bold),)),


                      )],
                  ),
                  SizedBox(width: 3.w,),

                  Image.asset(healthyfoodaImage),


                ],
              ),
            ),
          ),


        ),
        SizedBox(height: 4.h,),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),

              child: Padding(
                padding: const EdgeInsets. symmetric(horizontal: 15),
                child: Text('new arrival',
                  style: TextStyle(color: Colors.black, fontSize: 15.sp),),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('see more',
                style: TextStyle(fontSize: 12.sp, color: Colors.grey[800]),),
            ),


          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Container(

                height: 30.h,
                width: 44.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      badges.Badge(
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.white,

                        ),
                        badgeContent: Icon(Icons.favorite,size: 15.sp,color: Colors.red,),
                        child: Image.asset(kbabhalaImage),


                        position: BadgePosition.topEnd(top: 3, end:125),



                      ),

                      SizedBox(height: 2.h,),
                      Text('kbab hala ',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),),
                      RatingBar.builder(itemSize: 13.sp,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,

                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),




                      Row(
                        children: [
                          Text('115 ',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 10.sp),),
                          SizedBox(width: 1.w,),
                          Text('EGP ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.sp),),
                          SizedBox(
                            width: 10.w,
                            height: 1.h,
                          ),
                          Container(
                            height: 4.h,
                            width: 10.w,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.lightGreen,
                            ),
                            child: Icon(
                              Icons.add_shopping_cart,size: 24.sp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),


                    ],
                  ),



                ),



              ),
              SizedBox(width: 2.w,),
              Container(

                height: 30.h,
                width: 44.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [



                      badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Colors.white,

                          ),
                          badgeContent: Icon(Icons.favorite,size: 15.sp,color: Colors.red,),



                          position: BadgePosition.topEnd(top: 3, end:125),



                          child: Image.asset(beefImage)),
                      SizedBox(height: 2.h,),
                      Text('beef ',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),),

                      RatingBar.builder(itemSize: 13.sp,
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,

                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Row(
                        children: [
                          Text('115 ',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize: 10.sp),),
                          SizedBox(width: 1.w,),
                          Text('EGP ',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10.sp),),
                          SizedBox(
                            width: 10.w,
                            height: 1.h,
                          ),
                          Container(
                            height: 4.h,
                            width: 10.w,

                            decoration: BoxDecoration(
                                color: Colors.lightGreen,

                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.add_shopping_cart,size: 24.sp,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),


                    ],
                  ),



                ),



              ),
            ],


          ),
        ),


      ],

    );
  }
}
