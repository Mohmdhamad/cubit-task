import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/cubit.dart';

Widget buttonsBuilder(context)=> Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 25,
      children: [
        ElevatedButton(
          onPressed: () {
            AppCubit.get(context).decrement();
          },
          child: Icon(Icons.minimize),
        ),
        ElevatedButton(
          onPressed: () {
            AppCubit.get(context).increment();
          },
          child: Icon(Icons.add),
        ),
      ],
    ),
    FloatingActionButton(
      shape: CircleBorder(),
      onPressed: () {
        AppCubit.get(context).reset();
      },
      child: Icon(Icons.restart_alt),
    ),
  ],
);