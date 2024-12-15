import 'package:flutter/material.dart';
import 'package:fitandfresh/Presentation/Modules/OrderDetailsScreen.dart';
import 'package:fitandfresh/Presentation/Modules/VerifyPhoneScreen.dart';
import 'package:fitandfresh/Presentation/Modules/adressdetailsScreen.dart';
import 'package:fitandfresh/Presentation/Modules/favouriteScreen.dart';
import 'package:fitandfresh/Presentation/Modules/homeScreen.dart';
import 'package:fitandfresh/Presentation/Modules/introductionScreen.dart';
import 'package:fitandfresh/Presentation/Modules/mapScreen.dart';
import 'package:fitandfresh/Presentation/Modules/phoneNumberScreen.dart';
import 'package:fitandfresh/Presentation/Modules/productScreen.dart';
import 'package:fitandfresh/Presentation/Modules/settingScreen.dart';
import 'package:fitandfresh/Presentation/Modules/signUpscreen.dart';
import 'package:fitandfresh/Presentation/Modules/splash.dart';
import 'package:fitandfresh/constants/screens.dart';

import 'Presentation/Modules/signInscreen.dart';

class AppRoute
{
  Route? onGenterateRoute(RouteSettings routeSettings)
  {
switch(routeSettings.name){
  case splashPath:
    return MaterialPageRoute(builder: (_)=>SplashScreen(nextScreen: IntroductionScreen(),));

  case introPath:
    return MaterialPageRoute(builder: (_)=>IntroductionScreen());
  case signInPath:
    return MaterialPageRoute(builder: (_)=>SignInScreen());
  case signUpPath:
    return MaterialPageRoute(builder:(_)=>SignUpScreen());
  case homePath:
    return MaterialPageRoute(builder:(_)=>HomeScreen());
  case phonePath:
    return MaterialPageRoute(builder:(_)=>PhoneNumberScreen());
  case verifyPath:
    return MaterialPageRoute(builder:(_)=>VerifyPhoneScreen());
  case orderdetailsPath:
    return MaterialPageRoute(builder:(_)=>OrderDetailsScreen());
  case favouritePath:
    return MaterialPageRoute(builder:(_)=>FavouriteScreenn());
  case mapPath:
    return MaterialPageRoute(builder:(_)=>MapScreen());
  case productPath:
    return MaterialPageRoute(builder:(_)=>ProductScreen());
  case adresspath:
    return MaterialPageRoute(builder:(_)=>AdressDetailsScreen());
  case settingPath:
    return MaterialPageRoute(builder:(_)=>SettingScreen());








}
  }
}