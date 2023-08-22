part of 'replace_ui_cubit_cubit.dart';

@immutable
sealed class ReplaceUiCubitState {}

final class ReplaceUiCubitInitial extends ReplaceUiCubitState {}

class ShowText extends ReplaceUiCubitState {}

class ShowImage extends ReplaceUiCubitState {}

class ShowRedCircle extends ReplaceUiCubitState {}
