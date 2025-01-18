import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function callback;
  final Widget? leadingWidget;
  final Color? highlightColor;
  const CustomButton(
      {super.key,
      required this.buttonText,
      required this.callback,
      this.leadingWidget,
      this.highlightColor});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return InkResponse(
      onTap: () => callback(),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          color: (highlightColor == null)
              ? themeData.colorScheme.primary
              : highlightColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingWidget != null) ...[
              leadingWidget!,
              const SizedBox(width: 10),
            ],
            Text(buttonText, style: themeData.textTheme.labelLarge),
          ],
        ),
      ),
    );
  }
}
