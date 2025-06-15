import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/cubit.dart';
import 'package:tasks/features/home/view/screen/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  Widget build(BuildContext context){
    return BlocProvider(
      create: (context)=>AppCubit(),
      child: MaterialApp(
        home: HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }

}