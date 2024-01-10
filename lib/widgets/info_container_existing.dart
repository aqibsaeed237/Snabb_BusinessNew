import 'package:flutter/material.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class InfoContainer extends StatelessWidget {
  final String title;
  final String email;
  final String phoneNumber;
  final VoidCallback? onTap;
  final Icon? icon;

  const InfoContainer({
    super.key,
    required this.title,
    required this.email,
    required this.phoneNumber,
    this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.blue, width: 1),
        ),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableInputTextLabel(text: email),
              ReusableInputTextLabel(text: phoneNumber),
            ],
          ),
          trailing: icon,
        ),
      ),
    );
  }
}
