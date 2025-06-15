import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/cubit.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,States>(
      builder: (context,state){
        AppCubit cubit = context.read();
        return Scaffold(
          appBar: AppBar(),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: cubit.state.color,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(cubit.state.name,
                        style: titleStyle(),
                      ),
                      Text(cubit.state.counter.toString(),
                        style: titleStyle(),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                  cubit.changeState();
                },
                  child: Text('Change State ',
                  style: titleStyle(),
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    cubit.reset();
                  },
                  child: Text('reset',
                    style: titleStyle(),
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
