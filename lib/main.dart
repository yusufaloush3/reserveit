import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/app_route.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/presentation/bottom_navigation_bar/cubit/layout_cubit.dart';

import 'cubit_glabel/cubit_images.dart';

void main() {
  runApp(MyApp(
    appRoute: AppRoute(),
  ));
}

class MyApp extends StatelessWidget {
  final AppRoute? appRoute;
  MyApp({this.appRoute});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LayoutCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => ImageCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Reservelt',
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
          initialRoute: loginScreen,
          onGenerateRoute: appRoute!.generateRoute,
        ),
      ),
    );
  }
}
