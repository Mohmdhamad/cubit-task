import 'package:flutter/material.dart';
import 'package:tasks/core/cubit/cubit.dart';
import 'package:tasks/core/style/colors.dart';
import 'package:tasks/core/style/images.dart';

class CircleWallpaper extends StatelessWidget {
  const CircleWallpaper({super.key});
  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 25,
      children: [
        InkWell(
          onTap: (){
            cubit.changePic(img: AppImages.img1, color: AppColors.amber,);
          },
          child: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(AppImages.img1),
          ),
        ),
        InkWell(
          onTap: (){
            cubit.changePic(img: AppImages.img2, color: AppColors.teal,);
          },
          child: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(AppImages.img2),
          ),
        ),
        InkWell(
          onTap: (){
            cubit.changePic(img: AppImages.img3, color: AppColors.cyan,);
          },
          child: CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(AppImages.img3),
          ),
        ),
      ],
    );
  }
}
