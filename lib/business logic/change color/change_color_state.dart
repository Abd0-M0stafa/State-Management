part of 'change_color_cubit.dart';

@immutable
class ChangeColorState {
  final int? selectedButtonIndex;

  const ChangeColorState({this.selectedButtonIndex});
}

class ChangeColorInitial extends ChangeColorState {}

class ChangeColor extends ChangeColorState {
  const ChangeColor({int? selectedButtonIndex})
      : super(selectedButtonIndex: selectedButtonIndex);
}
