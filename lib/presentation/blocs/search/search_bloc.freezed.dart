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

  _Started started(Category category, String? text) {
    return _Started(
      category,
      text,
    );
  }

  _ChangeText changeText(String text) {
    return _ChangeText(
      text,
    );
  }

  _FetchNext fetchNext() {
    return const _FetchNext();
  }

  _ClearText clearText() {
    return const _ClearText();
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category, String? text) started,
    required TResult Function(String text) changeText,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeText value) changeText,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
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
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Category category, String? text});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? category = freezed,
    Object? text = freezed,
  }) {
    return _then(_Started(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started(this.category, this.text);

  @override
  final Category category;
  @override
  final String? text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.started(category: $category, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.started'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category, String? text) started,
    required TResult Function(String text) changeText,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
  }) {
    return started(category, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
  }) {
    return started?.call(category, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(category, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeText value) changeText,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchEvent {
  const factory _Started(Category category, String? text) = _$_Started;

  Category get category;
  String? get text;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangeTextCopyWith<$Res> {
  factory _$ChangeTextCopyWith(
          _ChangeText value, $Res Function(_ChangeText) then) =
      __$ChangeTextCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$ChangeTextCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$ChangeTextCopyWith<$Res> {
  __$ChangeTextCopyWithImpl(
      _ChangeText _value, $Res Function(_ChangeText) _then)
      : super(_value, (v) => _then(v as _ChangeText));

  @override
  _ChangeText get _value => super._value as _ChangeText;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_ChangeText(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeText with DiagnosticableTreeMixin implements _ChangeText {
  const _$_ChangeText(this.text);

  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.changeText(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.changeText'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeText &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$ChangeTextCopyWith<_ChangeText> get copyWith =>
      __$ChangeTextCopyWithImpl<_ChangeText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category, String? text) started,
    required TResult Function(String text) changeText,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
  }) {
    return changeText(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
  }) {
    return changeText?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
    required TResult orElse(),
  }) {
    if (changeText != null) {
      return changeText(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeText value) changeText,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
  }) {
    return changeText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
  }) {
    return changeText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
    required TResult orElse(),
  }) {
    if (changeText != null) {
      return changeText(this);
    }
    return orElse();
  }
}

abstract class _ChangeText implements SearchEvent {
  const factory _ChangeText(String text) = _$_ChangeText;

  String get text;
  @JsonKey(ignore: true)
  _$ChangeTextCopyWith<_ChangeText> get copyWith =>
      throw _privateConstructorUsedError;
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

class _$_FetchNext with DiagnosticableTreeMixin implements _FetchNext {
  const _$_FetchNext();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.fetchNext()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.fetchNext'));
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
    required TResult Function(Category category, String? text) started,
    required TResult Function(String text) changeText,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
  }) {
    return fetchNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
  }) {
    return fetchNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
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
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeText value) changeText,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
  }) {
    return fetchNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
  }) {
    return fetchNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
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

class _$_ClearText with DiagnosticableTreeMixin implements _ClearText {
  const _$_ClearText();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.clearText()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.clearText'));
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
    required TResult Function(Category category, String? text) started,
    required TResult Function(String text) changeText,
    required TResult Function() fetchNext,
    required TResult Function() clearText,
  }) {
    return clearText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
  }) {
    return clearText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category, String? text)? started,
    TResult Function(String text)? changeText,
    TResult Function()? fetchNext,
    TResult Function()? clearText,
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
    required TResult Function(_Started value) started,
    required TResult Function(_ChangeText value) changeText,
    required TResult Function(_FetchNext value) fetchNext,
    required TResult Function(_ClearText value) clearText,
  }) {
    return clearText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
  }) {
    return clearText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangeText value)? changeText,
    TResult Function(_FetchNext value)? fetchNext,
    TResult Function(_ClearText value)? clearText,
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
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchState {
  const factory _Initial() = _$_Initial;
}
