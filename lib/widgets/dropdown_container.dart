import 'package:flutter/material.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> items;
  final String selectedItem;
  final Function(String) onChanged;

  const CustomDropdown({
    required this.items,
    required this.selectedItem,
    required this.onChanged,
  });

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool isDropdownOpen = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isDropdownOpen = !isDropdownOpen;
        });
      },
      child: Container(
        width: 96,
        height: 27,
        decoration: BoxDecoration(
          color: primaryBlueColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Center(
              child: CustomTextWidget(
                text: widget.selectedItem,
                color: whiteColor,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            if (isDropdownOpen)
              Positioned(
                top: 30,
                left: 0,
                child: Container(
                  width: 96,
                  decoration: BoxDecoration(
                    color: primaryBlueColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: widget.items.map((item) {
                      return GestureDetector(
                        onTap: () {
                          widget.onChanged(item);
                          setState(() {
                            isDropdownOpen = false;
                          });
                        },
                        child: Container(
                          width: 96,
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 10,
                          ),
                          child: CustomTextWidget(
                            text: item,
                            color: whiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
