part of 'app_cubit.dart';

@freezed
class AppState  with _$AppState  {
  const factory AppState.load() = AppLoad;
  const factory AppState.loggedIn() = AppLoggedin;
  const factory AppState.loggedOut() = AppLoggedOut;
}