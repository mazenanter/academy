import 'package:academy/academy_app.dart';
import 'package:academy/core/di/di.dart';
import 'package:academy/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  configureDependencies();
  runApp(AcademyApp(appRouter: AppRouter()));
}
