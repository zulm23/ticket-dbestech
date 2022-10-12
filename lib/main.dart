import 'package:dbestech/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'screens/bottom_bar.dart';

void main() {
  runApp(
    const MyApp(),
  );
}
// void main() {
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder: (context) => const MyApp(),
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          primaryColor: Style.primaryColor),
      home: const BottomBar(),
    );
  }
}
