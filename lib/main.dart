import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:fitandfresh/app_route.dart';
import 'package:fitandfresh/data.local/cacheHelper.dart';
import 'package:sizer/sizer.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();


  runApp(DevicePreview(
      enabled: true,
      builder:(_)=> MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context, orientation, deviceType) =>  MaterialApp(
        debugShowCheckedModeBanner: false,

        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        onGenerateRoute: AppRoute().onGenterateRoute,
        
      ),
    );
  }
}
