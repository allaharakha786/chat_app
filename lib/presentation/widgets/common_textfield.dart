import 'package:chat_app/helper/constants/colors_resources.dart';
import 'package:chat_app/helper/constants/dimentions_resources.dart';
import 'package:chat_app/helper/constants/screen_percentage.dart';
import 'package:flutter/material.dart';

import '../../helper/utills/text_styles.dart';

// ignore: must_be_immutable
class CommonTextField extends StatelessWidget {
  TextEditingController? controller;
  Widget? prefixIcon;
  String? hintText;
  bool? isBorder;
  bool? isSuffix;
  Widget? suffixIcon;
  bool? readOnly;
  void Function(String)? onSubmitted;
  bool? obscureText;
  TextInputType? keyboardType;
  void Function()? onTap;
  String? Function(String?)? validator;
  String title;
  Color? color;
  bool isBorderSide;
  double? borderRadius;
  CommonTextField(
      {super.key,
      this.suffixIcon,
      this.obscureText,
      this.controller,
      this.hintText,
      this.prefixIcon,
      this.validator,
      this.isBorder,
      this.onTap,
      this.isSuffix,
      this.keyboardType,
      this.readOnly,
      this.onSubmitted,
      required this.title,
      this.color,
      required this.isBorderSide,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    Size mediaQuerySize = MediaQuery.of(context).size;
    return TextFormField(
      onFieldSubmitted: onSubmitted,
      obscureText: obscureText ?? false,
      readOnly: readOnly ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      controller: controller,
      style: CustomTextStyles.contentTextStyle(ColorsResources.BLACK_54),
      decoration: InputDecoration(
          filled: isBorder ?? false,
          fillColor: color ?? ColorsResources.BLACK_26,
          enabledBorder: isBorder ?? false
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                      borderRadius ?? DimensionsResource.RADIUS_SMALL),
                  borderSide: BorderSide(
                    color: isBorderSide
                        ? ColorsResources.BLACK_87
                        : Colors.transparent,
                  ))
              : UnderlineInputBorder(
                  borderSide: BorderSide(color: ColorsResources.BLACK_54)),
          border: isBorder ?? false
              ? const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(DimensionsResource.RADIUS_DEFAULT)))
              : null,
          focusedBorder: isBorder ?? false
              ? OutlineInputBorder(
                  borderSide: BorderSide(color: ColorsResources.WHITE_COLOR),
                  borderRadius:
                      BorderRadius.circular(DimensionsResource.RADIUS_DEFAULT))
              : null,
          prefixIcon: prefixIcon,
          suffixIcon: isSuffix ?? false
              ? GestureDetector(onTap: onTap, child: suffixIcon)
              : null,
          prefixIconColor: ColorsResources.BLACK_87,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: CustomTextStyles.customStyle(ColorsResources.PINK_COLOR),
          labelText: title),
    );
  }
}
