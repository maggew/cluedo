import 'package:auto_route/auto_route.dart';
import 'package:cluedo_neu/core/widgets/custom_button.dart';
import 'package:cluedo_neu/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomButton(
              buttonText: "Neues Spiel erstellen",
              callback: () {
                AutoRouter.of(context).push(const CreateGameRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
