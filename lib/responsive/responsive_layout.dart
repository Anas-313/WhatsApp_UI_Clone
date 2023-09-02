import 'package:flutter/material.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;

  ResponsiveLayout({required this.mobileScreenLayout, required this.webScreenLayout});


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constrain){
          if (constrain.maxWidth > 900){
            return webScreenLayout;
          }
          return mobileScreenLayout;
        },);
  }
}
