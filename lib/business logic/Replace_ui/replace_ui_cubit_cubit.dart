import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'replace_ui_cubit_state.dart';

class ReplaceUiCubit extends Cubit<ReplaceUiCubitState> {
  ReplaceUiCubit() : super(ReplaceUiCubitInitial());

  void showText() {
    emit(ShowText());
  }

  void showImage() {
    emit(ShowImage());
  }

  void showRedCircle() {
    emit(ShowRedCircle());
  }

  void reset() {
    emit(ReplaceUiCubitInitial());
  }
}
