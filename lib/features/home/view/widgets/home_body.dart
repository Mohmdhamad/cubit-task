import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/cubit.dart';
import 'package:tasks/features/home/view/widgets/buttons_builder.dart';

import '../../../../core/style/colors.dart';
import '../../../../core/style/text_style.dart';
import 'circle_wallpaper.dart';
import 'drop_form.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return Stack(
      children: [
        Positioned.fill(
          child: Image(
            image: NetworkImage(cubit.image),
            fit: BoxFit.fitHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              dropFormBuilder(context),
              Text(
                cubit.count.toString(),
                style: titleStyle(textSize: 25, color: AppColors.white),
              ),
              buttonsBuilder(context),
              CircleWallpaper(),
            ],
          ),
        ),
      ],
    );
  }
}
