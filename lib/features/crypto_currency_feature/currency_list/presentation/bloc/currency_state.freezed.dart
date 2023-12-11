// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrencyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyInitial value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrencyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyInitial value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrencyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyInitial value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrencyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyStateCopyWith<$Res> {
  factory $CurrencyStateCopyWith(
          CurrencyState value, $Res Function(CurrencyState) then) =
      _$CurrencyStateCopyWithImpl<$Res, CurrencyState>;
}

/// @nodoc
class _$CurrencyStateCopyWithImpl<$Res, $Val extends CurrencyState>
    implements $CurrencyStateCopyWith<$Res> {
  _$CurrencyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrencyInitialImplCopyWith<$Res> {
  factory _$$CurrencyInitialImplCopyWith(_$CurrencyInitialImpl value,
          $Res Function(_$CurrencyInitialImpl) then) =
      __$$CurrencyInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyInitialImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyInitialImpl>
    implements _$$CurrencyInitialImplCopyWith<$Res> {
  __$$CurrencyInitialImplCopyWithImpl(
      _$CurrencyInitialImpl _value, $Res Function(_$CurrencyInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyInitialImpl implements CurrencyInitial {
  const _$CurrencyInitialImpl();

  @override
  String toString() {
    return 'CurrencyState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyInitial value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrencyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyInitial value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrencyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyInitial value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrencyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CurrencyInitial implements CurrencyState {
  const factory CurrencyInitial() = _$CurrencyInitialImpl;
}

/// @nodoc
abstract class _$$CurrencyLoadingImplCopyWith<$Res> {
  factory _$$CurrencyLoadingImplCopyWith(_$CurrencyLoadingImpl value,
          $Res Function(_$CurrencyLoadingImpl) then) =
      __$$CurrencyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrencyLoadingImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyLoadingImpl>
    implements _$$CurrencyLoadingImplCopyWith<$Res> {
  __$$CurrencyLoadingImplCopyWithImpl(
      _$CurrencyLoadingImpl _value, $Res Function(_$CurrencyLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrencyLoadingImpl implements CurrencyLoading {
  const _$CurrencyLoadingImpl();

  @override
  String toString() {
    return 'CurrencyState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CurrencyLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyInitial value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrencyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyInitial value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrencyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyInitial value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrencyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CurrencyLoading implements CurrencyState {
  const factory CurrencyLoading() = _$CurrencyLoadingImpl;
}

/// @nodoc
abstract class _$$CurrencyLoadedImplCopyWith<$Res> {
  factory _$$CurrencyLoadedImplCopyWith(_$CurrencyLoadedImpl value,
          $Res Function(_$CurrencyLoadedImpl) then) =
      __$$CurrencyLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic result});
}

/// @nodoc
class __$$CurrencyLoadedImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyLoadedImpl>
    implements _$$CurrencyLoadedImplCopyWith<$Res> {
  __$$CurrencyLoadedImplCopyWithImpl(
      _$CurrencyLoadedImpl _value, $Res Function(_$CurrencyLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$CurrencyLoadedImpl(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CurrencyLoadedImpl implements CurrencyLoaded {
  const _$CurrencyLoadedImpl(this.result);

  @override
  final dynamic result;

  @override
  String toString() {
    return 'CurrencyState.loaded(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyLoadedImpl &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyLoadedImplCopyWith<_$CurrencyLoadedImpl> get copyWith =>
      __$$CurrencyLoadedImplCopyWithImpl<_$CurrencyLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyInitial value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrencyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyInitial value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrencyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyInitial value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrencyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CurrencyLoaded implements CurrencyState {
  const factory CurrencyLoaded(final dynamic result) = _$CurrencyLoadedImpl;

  dynamic get result;
  @JsonKey(ignore: true)
  _$$CurrencyLoadedImplCopyWith<_$CurrencyLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CurrencyErrorImplCopyWith<$Res> {
  factory _$$CurrencyErrorImplCopyWith(
          _$CurrencyErrorImpl value, $Res Function(_$CurrencyErrorImpl) then) =
      __$$CurrencyErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CurrencyErrorImplCopyWithImpl<$Res>
    extends _$CurrencyStateCopyWithImpl<$Res, _$CurrencyErrorImpl>
    implements _$$CurrencyErrorImplCopyWith<$Res> {
  __$$CurrencyErrorImplCopyWithImpl(
      _$CurrencyErrorImpl _value, $Res Function(_$CurrencyErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CurrencyErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencyErrorImpl implements CurrencyError {
  const _$CurrencyErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CurrencyState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyErrorImplCopyWith<_$CurrencyErrorImpl> get copyWith =>
      __$$CurrencyErrorImplCopyWithImpl<_$CurrencyErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic result) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic result)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic result)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrencyInitial value) initial,
    required TResult Function(CurrencyLoading value) loading,
    required TResult Function(CurrencyLoaded value) loaded,
    required TResult Function(CurrencyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrencyInitial value)? initial,
    TResult? Function(CurrencyLoading value)? loading,
    TResult? Function(CurrencyLoaded value)? loaded,
    TResult? Function(CurrencyError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrencyInitial value)? initial,
    TResult Function(CurrencyLoading value)? loading,
    TResult Function(CurrencyLoaded value)? loaded,
    TResult Function(CurrencyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CurrencyError implements CurrencyState {
  const factory CurrencyError(final String error) = _$CurrencyErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CurrencyErrorImplCopyWith<_$CurrencyErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
