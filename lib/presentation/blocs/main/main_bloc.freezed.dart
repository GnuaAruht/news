// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MainEventTearOff {
  const _$MainEventTearOff();

  _FetchNewsList fetchNewsList() {
    return const _FetchNewsList();
  }
}

/// @nodoc
const $MainEvent = _$MainEventTearOff();

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchNewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNewsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNewsList value) fetchNewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchNewsList value)? fetchNewsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNewsList value)? fetchNewsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res> implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  final MainEvent _value;
  // ignore: unused_field
  final $Res Function(MainEvent) _then;
}

/// @nodoc
abstract class _$FetchNewsListCopyWith<$Res> {
  factory _$FetchNewsListCopyWith(
          _FetchNewsList value, $Res Function(_FetchNewsList) then) =
      __$FetchNewsListCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchNewsListCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements _$FetchNewsListCopyWith<$Res> {
  __$FetchNewsListCopyWithImpl(
      _FetchNewsList _value, $Res Function(_FetchNewsList) _then)
      : super(_value, (v) => _then(v as _FetchNewsList));

  @override
  _FetchNewsList get _value => super._value as _FetchNewsList;
}

/// @nodoc

class _$_FetchNewsList with DiagnosticableTreeMixin implements _FetchNewsList {
  const _$_FetchNewsList();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.fetchNewsList()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainEvent.fetchNewsList'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchNewsList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchNewsList,
  }) {
    return fetchNewsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchNewsList,
  }) {
    return fetchNewsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchNewsList,
    required TResult orElse(),
  }) {
    if (fetchNewsList != null) {
      return fetchNewsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchNewsList value) fetchNewsList,
  }) {
    return fetchNewsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchNewsList value)? fetchNewsList,
  }) {
    return fetchNewsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchNewsList value)? fetchNewsList,
    required TResult orElse(),
  }) {
    if (fetchNewsList != null) {
      return fetchNewsList(this);
    }
    return orElse();
  }
}

abstract class _FetchNewsList implements MainEvent {
  const factory _FetchNewsList() = _$_FetchNewsList;
}

/// @nodoc
class _$MainStateTearOff {
  const _$MainStateTearOff();

  _$MainInitial initial() {
    return const _$MainInitial();
  }

  _$MainLoading loading() {
    return const _$MainLoading();
  }

  _$MainFetched fetched(List<Article> articles) {
    return _$MainFetched(
      articles,
    );
  }

  _$MainError error(String errorMessage) {
    return _$MainError(
      errorMessage,
    );
  }
}

/// @nodoc
const $MainState = _$MainStateTearOff();

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainInitial value) initial,
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  final MainState _value;
  // ignore: unused_field
  final $Res Function(MainState) _then;
}

/// @nodoc
abstract class _$$MainInitialCopyWith<$Res> {
  factory _$$MainInitialCopyWith(
          _$MainInitial value, $Res Function(_$MainInitial) then) =
      __$$MainInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainInitialCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$MainInitialCopyWith<$Res> {
  __$$MainInitialCopyWithImpl(
      _$MainInitial _value, $Res Function(_$MainInitial) _then)
      : super(_value, (v) => _then(v as _$MainInitial));

  @override
  _$MainInitial get _value => super._value as _$MainInitial;
}

/// @nodoc

class _$_$MainInitial with DiagnosticableTreeMixin implements _$MainInitial {
  const _$_$MainInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_$MainInitial value) initial,
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$MainInitial implements MainState {
  const factory _$MainInitial() = _$_$MainInitial;
}

/// @nodoc
abstract class _$$MainLoadingCopyWith<$Res> {
  factory _$$MainLoadingCopyWith(
          _$MainLoading value, $Res Function(_$MainLoading) then) =
      __$$MainLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainLoadingCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$MainLoadingCopyWith<$Res> {
  __$$MainLoadingCopyWithImpl(
      _$MainLoading _value, $Res Function(_$MainLoading) _then)
      : super(_value, (v) => _then(v as _$MainLoading));

  @override
  _$MainLoading get _value => super._value as _$MainLoading;
}

/// @nodoc

class _$_$MainLoading with DiagnosticableTreeMixin implements _$MainLoading {
  const _$_$MainLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'MainState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_$MainInitial value) initial,
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$MainLoading implements MainState {
  const factory _$MainLoading() = _$_$MainLoading;
}

/// @nodoc
abstract class _$$MainFetchedCopyWith<$Res> {
  factory _$$MainFetchedCopyWith(
          _$MainFetched value, $Res Function(_$MainFetched) then) =
      __$$MainFetchedCopyWithImpl<$Res>;
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$MainFetchedCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$MainFetchedCopyWith<$Res> {
  __$$MainFetchedCopyWithImpl(
      _$MainFetched _value, $Res Function(_$MainFetched) _then)
      : super(_value, (v) => _then(v as _$MainFetched));

  @override
  _$MainFetched get _value => super._value as _$MainFetched;

  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_$MainFetched(
      articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_$MainFetched with DiagnosticableTreeMixin implements _$MainFetched {
  const _$_$MainFetched(this.articles);

  @override
  final List<Article> articles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.fetched(articles: $articles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState.fetched'))
      ..add(DiagnosticsProperty('articles', articles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainFetched &&
            const DeepCollectionEquality().equals(other.articles, articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(articles));

  @JsonKey(ignore: true)
  @override
  _$$MainFetchedCopyWith<_$MainFetched> get copyWith =>
      __$$MainFetchedCopyWithImpl<_$MainFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return fetched(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) {
    return fetched?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainInitial value) initial,
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _$MainFetched implements MainState {
  const factory _$MainFetched(List<Article> articles) = _$_$MainFetched;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$MainFetchedCopyWith<_$MainFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainErrorCopyWith<$Res> {
  factory _$$MainErrorCopyWith(
          _$MainError value, $Res Function(_$MainError) then) =
      __$$MainErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class __$$MainErrorCopyWithImpl<$Res> extends _$MainStateCopyWithImpl<$Res>
    implements _$$MainErrorCopyWith<$Res> {
  __$$MainErrorCopyWithImpl(
      _$MainError _value, $Res Function(_$MainError) _then)
      : super(_value, (v) => _then(v as _$MainError));

  @override
  _$MainError get _value => super._value as _$MainError;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(_$MainError(
      errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$MainError with DiagnosticableTreeMixin implements _$MainError {
  const _$_$MainError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.error(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState.error'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainError &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$MainErrorCopyWith<_$MainError> get copyWith =>
      __$$MainErrorCopyWithImpl<_$MainError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainInitial value) initial,
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$MainInitial value)? initial,
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _$MainError implements MainState {
  const factory _$MainError(String errorMessage) = _$_$MainError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$MainErrorCopyWith<_$MainError> get copyWith =>
      throw _privateConstructorUsedError;
}
