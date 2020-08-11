import 'package:flutter/material.dart';

import 'app/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bizz_flutter',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Router().onGenerateRoute,
    );
  }
}
