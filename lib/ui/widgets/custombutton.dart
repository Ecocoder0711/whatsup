import 'package:flutter/material.dart';

class Buttonuse extends StatelessWidget {
  const Buttonuse({
    super.key,
    this.onPressed,
    required this.text,
    this.loading = false,
  });
  final void Function()? onPressed;
  final String text;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      onPressed: onPressed,
      child: loading
          ? Center(child: CircularProgressIndicator())
          : Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}



// AnimatedScale(
            //   scale: _scale,
            //   duration: const Duration(milliseconds: 200),
            //   child: TextButton.icon(
            //     onPressed: () async {
            //       setState(() => _scale = 0.95);
            //       await Future.delayed(const Duration(milliseconds: 100));
            //       setState(() => _scale = 1.0);
            //     },
            //     label: Text("Sign Up", style: TextStyle(color: Colors.white)),
            //     style: ButtonStyle(
            //       backgroundColor: WidgetStateProperty.all(Colors.black),
            //     ),
            //   ),
            // ),