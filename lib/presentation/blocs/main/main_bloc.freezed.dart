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

  _FetchArticles fetchArticles() {
    return const _FetchArticles();
  }
}

/// @nodoc
const $MainEvent = _$MainEventTearOff();

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchArticles value) fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchArticles value)? fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchArticles value)? fetchArticles,
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
abstract class _$FetchArticlesCopyWith<$Res> {
  factory _$FetchArticlesCopyWith(
          _FetchArticles value, $Res Function(_FetchArticles) then) =
      __$FetchArticlesCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchArticlesCopyWithImpl<$Res> extends _$MainEventCopyWithImpl<$Res>
    implements _$FetchArticlesCopyWith<$Res> {
  __$FetchArticlesCopyWithImpl(
      _FetchArticles _value, $Res Function(_FetchArticles) _then)
      : super(_value, (v) => _then(v as _FetchArticles));

  @override
  _FetchArticles get _value => super._value as _FetchArticles;
}

/// @nodoc

class _$_FetchArticles implements _FetchArticles {
  const _$_FetchArticles();

  @override
  String toString() {
    return 'MainEvent.fetchArticles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchArticles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchArticles,
  }) {
    return fetchArticles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchArticles,
  }) {
    return fetchArticles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchArticles,
    required TResult orElse(),
  }) {
    if (fetchArticles != null) {
      return fetchArticles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchArticles value) fetchArticles,
  }) {
    return fetchArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchArticles value)? fetchArticles,
  }) {
    return fetchArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchArticles value)? fetchArticles,
    required TResult orElse(),
  }) {
    if (fetchArticles != null) {
      return fetchArticles(this);
    }
    return orElse();
  }
}

abstract class _FetchArticles implements MainEvent {
  const factory _FetchArticles() = _$_FetchArticles;
}

/// @nodoc
class _$MainStateTearOff {
  const _$MainStateTearOff();

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
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

class _$_$MainLoading implements _$MainLoading {
  const _$_$MainLoading();

  @override
  String toString() {
    return 'MainState.loading()';
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
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

class _$_$MainFetched implements _$MainFetched {
  const _$_$MainFetched(this.articles);

  @override
  final List<Article> articles;

  @override
  String toString() {
    return 'MainState.fetched(articles: $articles)';
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
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return fetched(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) {
    return fetched?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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

class _$_$MainError implements _$MainError {
  const _$_$MainError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'MainState.error(errorMessage: $errorMessage)';
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
    required TResult Function() loading,
    required TResult Function(List<Article> articles) fetched,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Article> articles)? fetched,
    TResult Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_$MainLoading value) loading,
    required TResult Function(_$MainFetched value) fetched,
    required TResult Function(_$MainError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$MainLoading value)? loading,
    TResult Function(_$MainFetched value)? fetched,
    TResult Function(_$MainError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
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
