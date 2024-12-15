import 'package:flutter/material.dart';
import 'package:fitandfresh/Presentation/Modules/OrderDetailsScreen.dart';
import 'package:fitandfresh/Presentation/Modules/favouriteScreen.dart';
import 'package:fitandfresh/Presentation/Modules/homebody.dart';
import 'package:fitandfresh/Presentation/Modules/settingScreen.dart';
import 'package:fitandfresh/constants/imagesPathes.dart';
import 'package:sizer/sizer.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  List categories = ['sandwiches', 'seafood', 'drinks','desserts','ketogenic','sides','salad','chicken','beef'];
  List images=[SandwichesImage,seafoodImage,drinksImage,DessertImage,ketogenicImage,sidesImage,saladImage,chickenImage,beefImage];
  
  List Colorss=[Colors.lightGreen,Colors.orange,Colors.redAccent,Colors.indigo,Colors.green,Colors.deepOrangeAccent,Colors.lime,Colors.deepOrange,Colors.brown];
  List screens=[HomeBody(),FavouriteScreenn(),OrderDetailsScreen(),SettingScreen()];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  var index=0;



  
  @override
  Widget build(BuildContext context) {
   
    return (
         Scaffold(
           key: _key,
           backgroundColor: Colors.grey[200],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i){
         setState(() {
           index=i;
         });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(
            Icons.home
          ),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(
              Icons.favorite_border
          ),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(
              Icons.shopping_cart
          ),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(
              Icons.settings
          ),
            label: '',
          ),


        ],
        backgroundColor: Colors.white,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.grey,

      ),

      drawer: Drawer(


        child: Column(

          children: [
            SizedBox(height: 5.h,),


             Image.asset(drawerImage),
            SizedBox(height: 2.h,),

            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text('Hello',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                )),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text('Salma Mamdouh',style: TextStyle(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                )),
            SizedBox(height: 4.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Icon(Icons.home,color: Colors.lightGreen,size: 30,),
                  SizedBox(width: 4.w,),
                  Text('Home',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Icon(Icons.shopping_cart,color: Colors.lightGreen,size: 30,),
                  SizedBox(width: 4.w,),
                  Text('My Orders',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Icon(Icons.phone_in_talk_outlined,color: Colors.lightGreen,size: 30,),
                  SizedBox(width: 4.w,),
                  Text('About Us',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Icon(Icons.feedback,color: Colors.lightGreen,size: 30,),
                  SizedBox(width: 4.w,),
                  Text('Send Feedback',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Icon(Icons.share,color: Colors.lightGreen,size: 30,),
                  SizedBox(width: 4.w,),
                  Text('Share This App',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w500),)
                ],
              ),
            )

          ],
        ),


      ),
      body: screens[index],

         ));






  }}