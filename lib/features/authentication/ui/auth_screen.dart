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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorColor: Colors.transparent, // ✅ remove underline
                dividerColor: Colors.transparent, // ✅ Flutter 3.7+
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                tabs: const [Tab(text: "Sign Up"), Tab(text: "Sign In")],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [SignUpForm(), SignInForm()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
