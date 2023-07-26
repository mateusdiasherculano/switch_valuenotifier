import 'package:flutter/material.dart';

import 'presentation/color_switch_widget.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorSwitchWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
