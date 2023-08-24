import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:module14_assignment/screen/matchList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    navigateToMatchListScreen();
  }

  void navigateToMatchListScreen() {
    Future.delayed(const Duration(seconds: 3)).then((_) async {
      Get.offAll(() => const MatchList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Text('Match')
            ),
          ),
    );
  }
}