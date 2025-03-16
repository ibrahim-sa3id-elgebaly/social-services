import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/model/services_model.dart';

class ServicesItem extends StatelessWidget {
  final ServicesModel categoriesModel;
  final int index;
  final void Function(String category) onPress;

  const ServicesItem({
    super.key,
    required this.categoriesModel,
    required this.index,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress(categoriesModel.id);
      },
      child: Container(
        decoration: BoxDecoration(
            color: categoriesModel.background,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.r),
                topRight: Radius.circular(25.r),
                bottomLeft: Radius.circular(index.isEven ? 25.r : 0),
                bottomRight: Radius.circular(index.isOdd ? 25.r : 0))),
        child: Column(
          children: [
            Image.asset(
              "assets/images/${categoriesModel.image}",
              height: 116.h,
              width: 132.w,
            ),
            SizedBox(height: 10.h),
            Text(
              categoriesModel.title,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
