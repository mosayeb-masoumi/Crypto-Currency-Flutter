import 'package:freezed_annotation/freezed_annotation.dart';
part 'currency_state.freezed.dart';

@freezed
abstract class CurrencyState with _$CurrencyState {
  const factory CurrencyState.initial() = CurrencyInitial;
  const factory CurrencyState.loading() = CurrencyLoading;
  const factory CurrencyState.loaded(dynamic result) = CurrencyLoaded;
  const factory CurrencyState.error(String error) = CurrencyError;

// run below code in terminal to generate currency_state_freezed.dart
//flutter pub run build_runner watch --delete-conflicting-outputs
}