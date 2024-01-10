import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:snabb_business/utils/colors.dart';
import 'package:snabb_business/utils/constants.dart';
import 'package:snabb_business/widgets/reusable_text.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String hintText;
  final VoidCallback? onTap;
  final InputBorder focusedBorder;
  final String? autofillHints;
  final String? Function(String? value)? validator;
  final String? Function(String? value)? onSaved;
  final bool? obscureText;
  final Widget? suffixIcon;
  final Icon? prefixIcon;
  final bool? readOnly;
  final String? obscuringCharacter;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  const TextFormFieldWidget({
    Key? key,
    required this.controller,
    required this.textInputType,
    this.readOnly,
    required this.hintText,
    required this.focusedBorder,
    this.onSaved,
    this.validator,
    this.onTap,
    this.prefixIcon,
    this.autofillHints,
    this.onSubmitted,
    required this.obscureText,
    this.suffixIcon,
    this.onChanged,
    this.obscuringCharacter,
    required TextInputType keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      decoration: kTextFieldBoxDecoration,
      child: TextFormField(
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        onSaved: onSaved,
        onTap: onTap,
        readOnly: readOnly ?? false,
        validator: validator,
        keyboardType: textInputType,
        controller: controller,
        style: kTextFieldInputStyle,
        cursorColor: darkBlueColor,
        obscureText: obscureText ?? false,
        autofillHints: [autofillHints ?? ''],
        decoration: InputDecoration(
          filled: true,
          prefixIcon: prefixIcon,
          fillColor: Colors.white,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(color: Colors.grey, width: 0),
          ),
          hintText: hintText,
          hintStyle: kTextFieldHintStyle,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(color: darkBlueColor, width: 1),
          ),
          // contentPadding:
          //     EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        ),
      ),
    );
  }
}

//* TextFormField for customContainer
class textFormFieldContainer extends StatelessWidget {
  var text;
  var icon;

  textFormFieldContainer({super.key, this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: TextFormField(
          decoration: InputDecoration(
        hintText: text,
        hintStyle: kLabelInputText,
        fillColor: hintLightGrayColor,
        contentPadding: const EdgeInsets.all(5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: hintLightGrayColor, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: const BorderSide(color: darkBlueColor, width: 1),
        ),
        suffixIcon: Icon(
          icon,
          color: inputLabelTextFieldContainerColor,
          size: 20,
        ),
      )

          // borderRadius: BorderRadius.circular(8),
          // border: Border.all(color: hintLightGrayColor, width: 1),
          // color: ExtraLightGrayColor),
          ),
    );
  }
}

//* FieldContainer customCOntainer  LabelInputText
class textFieldContainer extends StatelessWidget {
  var text;
  var icon;

  textFieldContainer({super.key, this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: hintLightGrayColor, width: 1),
          // color: blackColor
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableInputTextLabel(text: text),
              Icon(
                icon,
                color: inputLabelTextFieldContainerColor,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
