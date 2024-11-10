import 'package:flutter/material.dart';
import 'package:up_tolist/core/theming/app_color.dart';
import 'package:up_tolist/core/theming/text_styels.dart';

Widget customTextField({
  TextEditingController? controller,
  Function(String)? onChange,
  FormFieldValidator? validate,
  String? label,
  String? hint,
  IconData? prefix,
  bool isObscure = false,
  IconData? suffix,
  Function()? pressed,
  Function()? tap,
  bool? enable,
  int? maxline,
}) =>
    TextFormField(
      onTap: tap,
      enabled: enable,
      controller: controller,
      obscureText: isObscure,
      maxLines: maxline,
      decoration: InputDecoration(
        hintStyle: TextStyles.stylesreguler12(),
        labelText: label,
        hintText: hint,
        
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: pressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 2.0),
        ),
      ),
      // style: TextStyles.stylesreguler16(),
      
      onChanged: onChange,
      validator: validate,
    );
