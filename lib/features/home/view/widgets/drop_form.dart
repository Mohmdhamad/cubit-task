import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/cubit.dart';
import 'package:tasks/core/style/colors.dart';

Widget dropFormBuilder(context)=>DropdownButtonFormField<String>(
  decoration: InputDecoration(
    filled: true,
    fillColor: AppColors.white,
    hintText: 'اختر ذكرك',
    hintTextDirection: TextDirection.rtl,
    focusedBorder:  OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
  alignment: Alignment.center,
  borderRadius: BorderRadius.circular(20),
  items: AppCubit.get(context).azkar,
  onChanged: (value){
    AppCubit.get(context).changeTitle(value!);
  },
);
