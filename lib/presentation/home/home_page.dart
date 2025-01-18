import 'package:auto_route/annotations.dart';
import 'package:cluedo_neu/presentation/home/widgets/home_body.dart';
import 'package:flutter/material.dart';


@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cluedo", style: themeData.textTheme.headlineLarge),
        centerTitle: true,
      ),
      body: HomeBody(),
    );
  }
}