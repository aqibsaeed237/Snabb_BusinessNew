import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class ShowAlertDialog {
  /// Shows an alert dialog with the specified [title], [onConfirm] and [onCancel] callbacks.
  static void show({
    required BuildContext context,
    required String title,
    VoidCallback? onConfirm,
    VoidCallback? onCancel,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              const Icon(
                Icons.info_outline,
                color: expenseRedColor,
                size: 34,
              ),
              const SizedBox(height: 10),
              CustomTextWidget(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                if (onCancel != null) {
                  onCancel();
                }
                Navigator.of(context).pop();
              },
              child: const CustomTextWidget(
                text: 'No',
                color: saleGreenColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {
                if (onConfirm != null) {
                  onConfirm();
                }
                Navigator.of(context).pop();
              },
              child: const CustomTextWidget(
                text: 'Yes',
                color: expenseRedColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      },
    );
  }
}
