import 'dart:ui';
import 'package:bloc/bloc.dart';
import 'package:tasks/core/style/colors.dart';

class States{
   String name;
   int counter;
  Color color;
  States({
    required this.name,
    required this.counter,
    required this.color,
});

  States custom({
      String? text,
     int? count,
     Color? colors,
}){
    return States(name: text ?? this.name, counter: count ?? this.counter, color: colors ?? this.color);
  }

}


class AppCubit extends Cubit<States>{

  AppCubit():super(States(name: 'Hamad', counter: 0, color: AppColors.deepOrange));
  void changeState(){
    emit(state.custom(
      text: state.name == 'Hamad' ? 'Mohamed':'Hamad',
      count: state.counter + 1 ,
      colors: state.color == AppColors.deepOrange ? AppColors.amber : AppColors.deepOrange,
    ));
  }
  void reset(){
    emit(States(name: 'Hamad', counter: state.counter=0, color: AppColors.deepOrange));
  }
}