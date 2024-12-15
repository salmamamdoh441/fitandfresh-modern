import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:fitandfresh/constants/screens.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sizer/sizer.dart';
class IntroductionScreen extends StatefulWidget {


   IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  var controller = PageController(viewportFraction: 0.8, keepPage: false);

  int index=0;

  List pages = List.generate(
      2,
          (index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Container(
          height: 10,
          child: Center(
              child: Image.asset(introImage,fit: BoxFit.cover,)),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
        child: Column(
          children: [

            SizedBox(
              height: 240,
              child: PageView.builder(
                controller: controller,
                // itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),

            SizedBox(
              height: 50,

            ),
            Column(
              children: [
                Text('Welcome back!',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text('Lets Make A Delicious Healthy ',style: TextStyle(fontSize: 20)),
                SizedBox(height: 7,),
                Text('Food With The Best Recipe For ',style: TextStyle(fontSize: 20)),
                SizedBox(height: 7,),
                Text('The Family ',style: TextStyle(fontSize: 20)),
                SizedBox(height: 45,),
                Container(
                  child: SmoothPageIndicator(
                      controller: controller,
                      count: pages.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 13,
                        dotWidth: 13,
                        activeDotColor: Colors.lightGreen,
                      )
                  ),
                ),
                SizedBox(height: 150,),
                index==0? InkWell(



                    onTap: (){
                      setState(() {
                        index=1;
                      });
                     controller.jumpToPage(1);
                     print('ss');

                    },
                    child: Text('Skip ',style: TextStyle(fontSize: 25.sp,color: Colors.grey))

                )
                    :InkWell(

                  onTap: (){
                    Navigator.pushNamed(context, signInPath);


                    print(controller.initialPage);
                  },
                      child: Container(
                  height: 6.h,
                  width: 70.w,
                        decoration: BoxDecoration(
                          color: Colors.lightGreen,

                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 15.sp),)),

                      ),
                    )
                ,




              ],
            ),

          ],
        ),
      ),
    );
  }
}
