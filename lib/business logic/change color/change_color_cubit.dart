import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

part 'change_color_state.dart';

class ChangeColorCubit extends Cubit<ChangeColorState> {
  ChangeColorCubit() : super(ChangeColorInitial());

  void changecolor(int selectedButtonIndex) {
    emit(ChangeColor(selectedButtonIndex: selectedButtonIndex));
  }
}
