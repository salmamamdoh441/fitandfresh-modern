import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:fitandfresh/constants/screens.dart';
import 'package:sizer/sizer.dart';
class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  _OrderDetailsScreenState createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    children: [
                      Icon(Icons.arrow_back,size: 20.sp,)
                      , Spacer(),
                      Text('Order Details ', style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                      Spacer(),
                      Icon(Icons.help_outline,size: 20.sp,),
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
            padding: const EdgeInsets.all(15.0),
            child: Text('Heaven’s Food', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Icon(Icons.alarm,color: Colors.green[400],),
                SizedBox(width: 2.w,),
                Text('Delivery As Soon As Possible',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15.sp),),
                SizedBox(width: 15.w,),
                Icon(Icons.arrow_forward_ios,size: 20.sp,),
              ],
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Icon(Icons.location_on,color: Colors.green[400],),
                SizedBox(width: 2.w,),
                Text('Hay Elgamaa Mansoura Egypt',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15.sp),),
                SizedBox(width: 14.w,),
                Icon(Icons.arrow_forward_ios,size: 20.sp,),
              ],
            ),
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              color: Colors.white,
              height: 55.h,
              width: 270.w,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Text('Your Order',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 12.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                            
                            

                          ),
                          child: Image.asset(mixseafoodImage),
                        ),
                        SizedBox(width: 2.w,),
                        Column(
                          children: [
                            Text('mix seafood',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: .5.h,),
                            Text('115 EGP',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),



                          ],
                        ),
                        SizedBox(width: 6.w,),
                        Icon(Icons.remove_circle,color: Colors.grey[600],size: 22.sp,),
                        SizedBox(width: 1.w,),
                        Text('1',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22.sp),),
                        SizedBox(width: 1.w,),
                        Icon(Icons.add_circle_outlined,color: Colors.green[300],size: 22.sp,),
                        SizedBox(width: 1.w,),
                        Icon(Icons.restore_from_trash,color: Colors.grey[600],size: 22.sp,),





                      ],

                    ),
                  ),
                  SizedBox(height: 1.h,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height: 12.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),



                          ),
                          child: Image.asset(mixgrilImage),
                        ),
                        SizedBox(width: 2.w,),
                        Column(
                          children: [
                            Text('mix gril',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: .5.h,),
                            Text('115 EGP',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),),



                          ],
                        ),
                        SizedBox(width: 12.w,),
                        Icon(Icons.remove_circle,color: Colors.grey[600],size: 22.sp,),
                        SizedBox(width: 1.w,),
                        Text('1',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22.sp),),
                        SizedBox(width: 1.w,),
                        Icon(Icons.add_circle_outlined,color: Colors.green[300],size: 22.sp,),
                        SizedBox(width: 1.w,),
                        Icon(Icons.restore_from_trash,color: Colors.grey[600],size: 22.sp,),





                      ],

                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Subtotal',style: TextStyle(color: Colors.grey[600],fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            SizedBox(width: 46.w,),
                            Text('230 EGP',style: TextStyle(color: Colors.grey[600],fontSize: 12.sp,fontWeight: FontWeight.bold),),

                          ],

                        ),
                        SizedBox(height: 2.h,),
                        Row(
                          children: [
                            Text('Delivery',style: TextStyle(color: Colors.grey[600],fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            SizedBox(width: 46.w,),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],

                                  borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.black,width: .5.w)
                              ),
                              height: 3.h,
                              width: 18.w,
                              child: Center(child: Text('free',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.w400),)),
                            )


                          ],
                        ),
                        SizedBox(height: 2.h,),

                        Row(
                          children: [
                            Text('Total',style: TextStyle(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w600),),
                            SizedBox(width: 54.w,),
                            Text('230 EGP',style: TextStyle(color: Colors.black,fontSize: 14.sp,fontWeight: FontWeight.bold),),

                          ],

                        ),

                      ],
                    ),
                  ),


                ],

              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(

              height: 7.h,
              width: 20.w,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(10),




              ),
              child: Center(child: InkWell(

                  onTap: (){
                    Navigator.pushNamed(context, adresspath);

                  },
                  child: Text('Place Order',style: TextStyle(color: Colors.white,fontSize: 15.sp),))),
            ),
          )

        ],
      )
    );
  }
}
