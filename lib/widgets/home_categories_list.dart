
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/home_cubit/home_cubit.dart';
import '../theme/app_text_styels/app_text_stayls.dart';
import '../utiles/constant.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: List.generate(
        homeCategories.length,
            (index) => GestureDetector(
          onTap: () {
            context.read<HomeCubit>().changeListIndex(index);
          },
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Text(
                  homeCategories[index],
                  style: AppTextStyles.styleSemiBold10sp(context).copyWith(
                    fontWeight: context.read<HomeCubit>().selectedIndex == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                    fontSize: context.read<HomeCubit>().selectedIndex == index
                        ? 19.sp
                        : 18.sp,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
