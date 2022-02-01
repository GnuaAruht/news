// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListEventTearOff {
  const _$ListEventTearOff();

  _fetchList fetchList(Category category) {
    return _fetchList(
      category,
    );
  }
}

/// @nodoc
const $ListEvent = _$ListEventTearOff();

/// @nodoc
mixin _$ListEvent {
  Category get category => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) fetchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchList value) fetchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchList value)? fetchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchList value)? fetchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListEventCopyWith<ListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListEventCopyWith<$Res> {
  factory $ListEventCopyWith(ListEvent value, $Res Function(ListEvent) then) =
      _$ListEventCopyWithImpl<$Res>;
  $Res call({Category category});
}

/// @nodoc
class _$ListEventCopyWithImpl<$Res> implements $ListEventCopyWith<$Res> {
  _$ListEventCopyWithImpl(this._value, this._then);

  final ListEvent _value;
  // ignore: unused_field
  final $Res Function(ListEvent) _then;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc
abstract class _$fetchListCopyWith<$Res> implements $ListEventCopyWith<$Res> {
  factory _$fetchListCopyWith(
          _fetchList value, $Res Function(_fetchList) then) =
      __$fetchListCopyWithImpl<$Res>;
  @override
  $Res call({Category category});
}

/// @nodoc
class __$fetchListCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements _$fetchListCopyWith<$Res> {
  __$fetchListCopyWithImpl(_fetchList _value, $Res Function(_fetchList) _then)
      : super(_value, (v) => _then(v as _fetchList));

  @override
  _fetchList get _value => super._value as _fetchList;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_fetchList(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$_fetchList implements _fetchList {
  const _$_fetchList(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'ListEvent.fetchList(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _fetchList &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$fetchListCopyWith<_fetchList> get copyWith =>
      __$fetchListCopyWithImpl<_fetchList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) fetchList,
  }) {
    return fetchList(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
  }) {
    return fetchList?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchList value) fetchList,
  }) {
    return fetchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_fetchList value)? fetchList,
  }) {
    return fetchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchList value)? fetchList,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(this);
    }
    return orElse();
  }
}

abstract class _fetchList implements ListEvent {
  const factory _fetchList(Category category) = _$_fetchList;

  @override
  Category get category;
  @override
  @JsonKey(ignore: true)
  _$fetchListCopyWith<_fetchList> get copyWith =>
      throw _privateConstructorUsedError;
}
