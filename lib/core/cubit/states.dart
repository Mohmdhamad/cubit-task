import 'package:flutter/material.dart';

abstract class AppStates{}

class InitialState extends AppStates{}
class ChangeCount extends AppStates{}
class ChangeTitle extends AppStates{}
class ChangeImage extends AppStates{
  final String img;
  final Color color;

  ChangeImage({required this.img, required this.color});

}
