// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_basic_02/my_widget_1.dart';
import 'package:riverpod_basic_02/my_widget_2.dart';
import 'package:riverpod_basic_02/my_widget_3.dart';
import 'package:riverpod_basic_02/my_widget_4.dart';

void main() {
  const app = MyApp();
  const scope = ProviderScope(child: app);
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          // child: MyWidget1(),
          // child: MyWidget2(),
          // child: MyWidget3(),
          child: MyWidget4(),
        ),
      ),
    );
  }
}
