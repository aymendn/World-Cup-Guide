import 'package:flutter/material.dart';

class OnboradingScreen extends StatefulWidget {
  const OnboradingScreen({Key? key}) : super(key: key);

  @override
  State<OnboradingScreen> createState() => _OnboradingScreenState();
}

class _OnboradingScreenState extends State<OnboradingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Expanded(
        child: PageView.builder(
            itemBuilder: ((context, index) => const OnboradingItem())),
      )),
    );
  }
}

class OnboradingItem extends StatefulWidget {
  const OnboradingItem({Key? key}) : super(key: key);

  @override
  State<OnboradingItem> createState() => _OnboradingItemState();
}

class _OnboradingItemState extends State<OnboradingItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SizedBox(
            height: double.infinity,
            child: Image.asset("assets/images/hotel.jpg", fit: BoxFit.cover)),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[Colors.black, Colors.black12],
            ),
          ),
        ),
        const Text("Data is Here"),
      ],
    );
  }
}
