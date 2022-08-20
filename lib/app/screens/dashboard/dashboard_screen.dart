import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_app/app/screens/home_screen/home_screen.dart';
import 'package:food_app/app/utils/app_colors.dart';
import 'package:food_app/gen/assets.gen.dart';

import '../../utils/constants.dart';
import '../../widgets/base_stateless_widget.dart';
import '../../widgets/bottom_navigation_widget.dart';
import '../dashboard/cubit/dashboard_cubit.dart';

class DashboardScreen extends BaseStatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  Widget bottomBar(DashboardInitial state, DashboardCubit dashboardCubit) {
    return BottomAppBar(
      notchMargin: 10,
      shape: const CircularNotchedRectangle(),
      clipBehavior: Clip.hardEdge,
      color: Colors.white,
      child: BottomNavigationWidget(
        selectedIndex: state.initialIndex,
        onItemTapped: (index) {
          dashboardCubit.itemTapped(index);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var dashboardCubit = DashboardCubit(0);

    return BlocBuilder<DashboardCubit, DashboardState>(
      bloc: dashboardCubit,
      builder: (context, state) {
        if (state is DashboardInitial) {
          return Scaffold(
            // padding: EdgeInsets.zero,
            bottomNavigationBar: bottomBar(state, dashboardCubit),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: AppColors.appRed,
              enableFeedback: true,
              child: Assets.images.cartIcon.image(),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            body: IndexedStack(
              index: state.initialIndex,
              children: [
                const HomeScreen(),
                Container(),
              ],
            ),
          );
        } else {
          return kShrinkedBox;
        }
      },
    );
  }
}
