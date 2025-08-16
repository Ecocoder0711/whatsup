import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:whatsup/core/constants/string.dart';
import 'package:whatsup/ui/widgets/custombutton.dart';
import 'package:whatsup/ui/widgets/custumtextfield.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

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
            Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            10.verticalSpace,
            Text(
              "Please Log In To Your Account!",
              style: TextStyle(color: Colors.grey),
            ),
            20.verticalSpace,
            InkWell(
              child: CustumTextField(
                hinttext: "Enter Email",
                message: "Please Enter your Email",
                focusNode: FocusNode(),
              ),
            ),
            20.verticalSpace,
            InkWell(
              child: CustumTextField(
                hinttext: "Enter Password",
                message: "Please Enter your Password",
                focusNode: FocusNode(),
              ),
            ),
            20.verticalSpace,
            InkWell(
              child: Buttonuse(onPressed: () {}, text: "Log In"),
            ),
            13.5.verticalSpace,
            Text("Don't have account"),
            2.5.verticalSpace,
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, signup);
              },
              child: Text(
                "Sign up",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
