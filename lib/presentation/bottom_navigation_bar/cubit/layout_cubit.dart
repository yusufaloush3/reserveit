import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reservelt/presentation/bottom_navigation_bar/cubit/layout_states.dart';
import 'package:reservelt/presentation/howe_screen/home_screen.dart';
import 'package:reservelt/presentation/account_screen/account_screen.dart';
import 'package:reservelt/presentation/reservation_screen/reservation_screen.dart';
import 'package:reservelt/presentation/search_screen/search_screen.dart';

class LayoutCubit extends Cubit<ReserveltLayoutStates> {
  LayoutCubit() : super(ReserveltInitialLayout());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItem = [
    const BottomNavigationBarItem(
      icon: Icon(MdiIcons.homeVariantOutline),
      label: "",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.search_outlined),
      label: "",
    ),
    const BottomNavigationBarItem(
      icon: Icon(MdiIcons.calendarMonthOutline),
      label: "",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_outlined),
      label: "",
    ),
  ];

  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    ReservationScreen(),
    AccountScreen(),
  ];

  void changeBottomNavigationBar(index) {
    currentIndex = index;
    emit(ReserveltBottomNavigationBar());
  }
}
