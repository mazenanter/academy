import 'package:academy/core/routing/app_router.dart';
import 'package:academy/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcademyApp extends StatelessWidget {
  const AcademyApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Academy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute: Routes.subscriptionScreen,
      ),
    );
  }
}
