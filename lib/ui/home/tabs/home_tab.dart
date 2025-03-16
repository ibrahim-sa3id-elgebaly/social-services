import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/model/services_model.dart';
import '../../../widget/services_item.dart';
import '../../login/login_screen.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.symmetric(vertical: 10, horizontal: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "تطوع فى الخير",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 25.w),
              itemBuilder: (context, index) => ServicesItem(
                  onPress: (category) {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  categoriesModel: ServicesModel.categories[index],
                  index: index),
              itemCount: ServicesModel.categories.length,
            ),
          )
        ],
      ),
    );
  }
}
