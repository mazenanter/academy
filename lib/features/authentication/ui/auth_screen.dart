import 'package:academy/core/styles/colors_manager.dart';
import 'package:academy/core/widgets/back_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'sign_in_form.dart';
import 'sign_up_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackScreen(
      child: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40.h),
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: ColorsManager.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TabBar(
                    controller: _tabController,
                    labelPadding: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    indicator: BoxDecoration(
                      color: ColorsManager.grey200,
                      borderRadius: BorderRadius.circular(12),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black.withOpacity(0.15),
                      //     blurRadius: 8,
                      //     offset: const Offset(0, 0),
                      //   ),
                      // ],
                    ),
                    labelColor: ColorsManager.black,
                    unselectedLabelColor: ColorsManager.grey,
                    indicatorColor: Colors.transparent,
                    dividerColor: Colors.transparent,
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    tabs: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 34.w),
                        alignment: Alignment.center,
                        child: const Tab(text: "Sign Up"),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 34.w),
                        alignment: Alignment.center,
                        child: const Tab(text: "Sign In"),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 400.w,
                  height: MediaQuery.of(context).size.height * 0.72,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [SignUpForm(), SignInForm()],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
