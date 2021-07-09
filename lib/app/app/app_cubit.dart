import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_cubit.freezed.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.load()) {
    isLogin();
  }

  isLogin() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    emit(AppState.loggedIn());
  }
}
