import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:sizer/sizer.dart';

class FavouriteScreenn extends StatefulWidget {
  const FavouriteScreenn({Key? key}) : super(key: key);

  @override
  _FavouriteScreennState createState() => _FavouriteScreennState();
}

class _FavouriteScreennState extends State<FavouriteScreenn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              width: 20.w,
              height: 6.h,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Row(
                    children: [
                      Icon(Icons.arrow_back, size: 20.sp),
                      SizedBox(width: 30.w),
                      Text(
                        'favourite ',
                        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      height: 25.h,
                      width: 40.w,
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
                            badges.Badge(badgeStyle: const badges.BadgeStyle(
                              badgeColor: Colors.white
                            ),
                              // badgeColor: Colors.white,
                              badgeContent: Icon(
                                Icons.highlight_remove,
                                size: 20.sp,
                                color: Colors.grey,
                              ),
                              position: badges.BadgePosition.topEnd(top: -4, end: 111),
                              child: Image.asset(mixgrilImage),
                            ),
                            SizedBox(height: 2.5.h),
                            Text(
                              'mix grill ',
                              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '115 ',
                                  style: TextStyle(
                                      color: Colors.green, fontWeight: FontWeight.w500, fontSize: 10.sp),
                                ),
                                SizedBox(width: 1.w),
                                Text(
                                  'EGP ',
                                  style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                ),
                                SizedBox(
                                  width: 10.w,
                                  height: 6.h,
                                ),
                                Container(
                                  height: 4.h,
                                  width: 9.w,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.add_shopping_cart,
                                    size: 24.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Container(
                      height: 25.h,
                      width: 40.w,
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
                              badgeStyle: const badges.BadgeStyle(
                                badgeColor: Colors.white
                              ),
                              // badgeColor: Colors.white,
                              badgeContent: Icon(
                                Icons.highlight_remove,
                                size: 20.sp,
                                color: Colors.grey,
                              ),
                              position: badges.BadgePosition.topEnd(top: -4, end: 111),
                              child: Image.asset(mixseafoodImage),
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              'mix seafood ',
                              style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '115 ',
                                  style: TextStyle(
                                      color: Colors.green, fontWeight: FontWeight.w500, fontSize: 10.sp),
                                ),
                                SizedBox(width: 1.w),
                                Text(
                                  'EGP ',
                                  style: TextStyle(
                                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10.sp),
                                ),
                                SizedBox(
                                  width: 12.w,
                                ),
                                Container(
                                  height: 4.h,
                                  width: 9.w,
                                  decoration: BoxDecoration(
                                      color: Colors.lightGreen,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.add_shopping_cart,
                                    size: 24.sp,
                                    color: Colors.white,
                                  ),
                                ),
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
          ),
        ],
      ),
    );
  }
}
