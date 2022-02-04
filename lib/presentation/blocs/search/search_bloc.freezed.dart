// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _Search search(String? text) {
    return _Search(
      text,
    );
  }

  _FetchNext fetchNext() {
    return const _FetchNext();
  }

  _ClearText clearText() {
    return const _ClearText();
  }

  _Refresh refresh(String? text) {
    return _Refresh(
      text,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? text) search,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
    required TResult Function(String? text) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String? text});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_Search(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.text);

  @override
  final String? text;

  @override
  String toString() {
    return 'SearchEvent.search(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Search &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? text) search,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
    required TResult Function(String? text) refresh,
  }) {
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
  }) {
    return search?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
    required TResult Function(_Refresh value) refresh,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchEvent {
  const factory _Search(String? text) = _$_Search;

  String? get text;
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchNextCopyWith<$Res> {
  factory _$FetchNextCopyWith(
          _FetchNext value, $Res Function(_FetchNext) then) =
      __$FetchNextCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchNextCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$FetchNextCopyWith<$Res> {
  __$FetchNextCopyWithImpl(_FetchNext _value, $Res Function(_FetchNext) _then)
      : super(_value, (v) => _then(v as _FetchNext));

  @override
  _FetchNext get _value => super._value as _FetchNext;
}

/// @nodoc

class _$_FetchNext implements _FetchNext {
  const _$_FetchNext();

  @override
  String toString() {
    return 'SearchEvent.fetchNext()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchNext);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? text) search,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
    required TResult Function(String? text) refresh,
  }) {
    return fetchNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
  }) {
    return fetchNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
    required TResult orElse(),
  }) {
    if (fetchNext != null) {
      return fetchNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
    required TResult Function(_Refresh value) refresh,
  }) {
    return fetchNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
  }) {
    return fetchNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (fetchNext != null) {
      return fetchNext(this);
    }
    return orElse();
  }
}

abstract class _FetchNext implements SearchEvent {
  const factory _FetchNext() = _$_FetchNext;
}

/// @nodoc
abstract class _$ClearTextCopyWith<$Res> {
  factory _$ClearTextCopyWith(
          _ClearText value, $Res Function(_ClearText) then) =
      __$ClearTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClearTextCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$ClearTextCopyWith<$Res> {
  __$ClearTextCopyWithImpl(_ClearText _value, $Res Function(_ClearText) _then)
      : super(_value, (v) => _then(v as _ClearText));

  @override
  _ClearText get _value => super._value as _ClearText;
}

/// @nodoc

class _$_ClearText implements _ClearText {
  const _$_ClearText();

  @override
  String toString() {
    return 'SearchEvent.clearText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ClearText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? text) search,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
    required TResult Function(String? text) refresh,
  }) {
    return clearText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
  }) {
    return clearText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
    required TResult orElse(),
  }) {
    if (clearText != null) {
      return clearText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
    required TResult Function(_Refresh value) refresh,
  }) {
    return clearText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
  }) {
    return clearText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (clearText != null) {
      return clearText(this);
    }
    return orElse();
  }
}

abstract class _ClearText implements SearchEvent {
  const factory _ClearText() = _$_ClearText;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
  $Res call({String? text});
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_Refresh(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh(this.text);

  @override
  final String? text;

  @override
  String toString() {
    return 'SearchEvent.refresh(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Refresh &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$RefreshCopyWith<_Refresh> get copyWith =>
      __$RefreshCopyWithImpl<_Refresh>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? text) search,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
    required TResult Function(String? text) refresh,
  }) {
    return refresh(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
  }) {
    return refresh?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? text)? search,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    TResult Function(String? text)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements SearchEvent {
  const factory _Refresh(String? text) = _$_Refresh;

  String? get text;
  @JsonKey(ignore: true)
  _$RefreshCopyWith<_Refresh> get copyWith =>
      throw _privateConstructorUsedError;
}
