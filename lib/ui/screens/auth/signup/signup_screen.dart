import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsup/core/constants/styles.dart';
import 'package:whatsup/ui/widgets/custombutton.dart';
import 'package:whatsup/ui/widgets/custumtextfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // double _scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: 1.sw * 0.05,
          vertical: 10.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            60.verticalSpace,
            Center(child: Text("Create Your Account", style: h)),
            10.verticalSpace,
            Text(
              "Please Provide The Details!",
              style: TextStyle(color: Colors.grey),
            ),
            20.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustumTextField(
                hinttext: "Enter name",
                message: "Please Enter Some Text",
                focusNode: FocusNode(),
                onChanged: (p0) {},
              ),
            ),
            12.5.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustumTextField(
                hinttext: "Enter email",
                message: "Please Enter Some Text",
                onChanged: (p0) {},
              ),
            ),
            12.5.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustumTextField(
                hinttext: "Enter password",
                message: "Please Enter Some Text",
                onChanged: (p0) {},
              ),
            ),
            12.5.verticalSpace,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustumTextField(
                hinttext: "Confirm password",
                message: "Please Enter Some Text",
                onChanged: (p0) {},
              ),
            ),
            12.5.verticalSpace,
            Buttonuse(onPressed: () {}, text: "Sign up"),
            13.5.verticalSpace,
            Text("Already have account?"),
            2.5.verticalSpace,
            Text("Login", style: TextStyle(fontWeight: FontWeight.bold)),

            // TextButton(onPressed: () {}, child: Text("login")),
          ],
        ),
      ),
    );
  }
}
