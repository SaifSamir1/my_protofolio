import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int selectedIndex = 0;

  void changeListIndex(int index) {
    selectedIndex = index;
    emit(ChangeListIndexState());
  }
}
