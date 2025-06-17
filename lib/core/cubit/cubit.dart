import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/states.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/images.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class AppCubit extends Cubit<AppStates>{
  AppCubit():super(InitialState());
  static AppCubit get(context)=>BlocProvider.of(context);
  int count = 0;
  void increment(){
    count++;
    emit(ChangeCount());
  }
  void decrement(){
    if(count>0) {
      count--;
      emit(ChangeCount());
    }
  }
  void reset(){
    count = 0 ;
      emit(ChangeCount());

  }
  List<DropdownMenuItem<String>>azkar= [
    DropdownMenuItem(
        value: 'الحمدلله',
        child: Text('الحمدلله')),
    DropdownMenuItem(
        value: 'لا اله الا الله',
        child: Text('لا اله الا الله')),

    DropdownMenuItem(value:'اللهم صلي علي محمد' ,
        child: Text('اللهم صلي علي محمد')),
    DropdownMenuItem(
        value:'استغفر الله العظيم',
  child: Text('استغفر الله العظيم')),

  ];
  String image = AppImages.img1;
  Color colors = AppColors.amber;
  String title = '';
  void changePic({required String img , required Color color}){
    image = img;
    colors = color;
    emit(ChangeImage(img: img, color: color));
  }
  void changeTitle(String tit){
    title = tit;
    emit(ChangeTitle());
  }
}