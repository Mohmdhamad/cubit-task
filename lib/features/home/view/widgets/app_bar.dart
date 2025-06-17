import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/cubit.dart';
import '../../../../core/style/app_text.dart';
import '../../../../core/style/text_style.dart';

AppBar appBarHome(context){
  return AppBar(
    centerTitle: true,
    title: Text(AppCubit.get(context).title,
      style: titleStyle(),
    ),
    backgroundColor: AppCubit.get(context).colors,
  );
}