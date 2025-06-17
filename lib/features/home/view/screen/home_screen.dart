import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/cubit.dart';
import 'package:tasks/core/cubit/states.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/images.dart';
import 'package:tasks/core/style/text_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks/features/home/view/widgets/app_bar.dart';
import 'package:tasks/features/home/view/widgets/circle_wallpaper.dart';
import 'package:tasks/features/home/view/widgets/drop_form.dart';
import 'package:tasks/features/home/view/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        if (state is ChangeImage) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Wallpaper changed successfully')),
          );
        } else if (state is ChangeTitle) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('تم تغيير الذكر')));
        }
      },
      builder: (context, state) {
        AppCubit cubit = context.read();
        return Scaffold(
          appBar: appBarHome(context),
          body: HomeBody(),
        );
      },
    );
  }
}
