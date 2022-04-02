import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservelt/presentation/bottom_navigation_bar/cubit/layout_cubit.dart';
import 'package:reservelt/presentation/bottom_navigation_bar/cubit/layout_states.dart';


class BottomNavigations extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit, ReserveltLayoutStates>(
      listener: (context, states){},
      builder: (context, states) {
        var cubit = LayoutCubit.get(context);
        return Scaffold(
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            items: cubit.bottomItem,
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNavigationBar(index);
            },
            type: BottomNavigationBarType.fixed,
          ),
        );
      },
    );
  }
}
