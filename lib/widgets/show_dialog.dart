import 'package:flutter/material.dart';
import 'package:snabb_business/utils/constants.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class AlertDialogReusable extends StatelessWidget {
  const AlertDialogReusable(
      {super.key,
      required this.description,
      required this.title,
      required this.button,
      this.itemsList});
  final String title;
  final String description;
  final Widget button;
  final List<Widget>? itemsList;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actionsPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 15),
      contentPadding: EdgeInsets.only(top: 30, left: 36, right: 36),
      insetPadding: EdgeInsets.symmetric(horizontal: 18),
      titleTextStyle: kTextStyle,
      elevation: 3,
      contentTextStyle: kTextFieldInputStyle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      content: Text(
        description,
        textAlign: TextAlign.center,
      ),
      actions: [
        itemsList != null
            ? Container(
                margin: EdgeInsets.only(bottom: 35),
                child: Column(
                  children: itemsList ?? [],
                ),
              )
            : Container(
                height: 15,
              ),
        Padding(
            padding: const EdgeInsets.only(bottom: 14.0, left: 12, right: 12),
            child: button)
      ],
    );
  }
}
