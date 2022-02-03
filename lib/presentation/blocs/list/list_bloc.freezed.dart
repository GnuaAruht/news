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

  _FetchList fetchList(Category category) {
    return _FetchList(
      category,
    );
  }

  _RefreshList refreshList(Category category) {
    return _RefreshList(
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
    required TResult Function(Category category) refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
    TResult Function(Category category)? refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
    TResult Function(Category category)? refreshList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchList value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchList value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchList value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
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
abstract class _$FetchListCopyWith<$Res> implements $ListEventCopyWith<$Res> {
  factory _$FetchListCopyWith(
          _FetchList value, $Res Function(_FetchList) then) =
      __$FetchListCopyWithImpl<$Res>;
  @override
  $Res call({Category category});
}

/// @nodoc
class __$FetchListCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements _$FetchListCopyWith<$Res> {
  __$FetchListCopyWithImpl(_FetchList _value, $Res Function(_FetchList) _then)
      : super(_value, (v) => _then(v as _FetchList));

  @override
  _FetchList get _value => super._value as _FetchList;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_FetchList(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$_FetchList implements _FetchList {
  const _$_FetchList(this.category);

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
            other is _FetchList &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$FetchListCopyWith<_FetchList> get copyWith =>
      __$FetchListCopyWithImpl<_FetchList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) fetchList,
    required TResult Function(Category category) refreshList,
  }) {
    return fetchList(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
    TResult Function(Category category)? refreshList,
  }) {
    return fetchList?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
    TResult Function(Category category)? refreshList,
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
    required TResult Function(_FetchList value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return fetchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchList value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
  }) {
    return fetchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchList value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (fetchList != null) {
      return fetchList(this);
    }
    return orElse();
  }
}

abstract class _FetchList implements ListEvent {
  const factory _FetchList(Category category) = _$_FetchList;

  @override
  Category get category;
  @override
  @JsonKey(ignore: true)
  _$FetchListCopyWith<_FetchList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RefreshListCopyWith<$Res> implements $ListEventCopyWith<$Res> {
  factory _$RefreshListCopyWith(
          _RefreshList value, $Res Function(_RefreshList) then) =
      __$RefreshListCopyWithImpl<$Res>;
  @override
  $Res call({Category category});
}

/// @nodoc
class __$RefreshListCopyWithImpl<$Res> extends _$ListEventCopyWithImpl<$Res>
    implements _$RefreshListCopyWith<$Res> {
  __$RefreshListCopyWithImpl(
      _RefreshList _value, $Res Function(_RefreshList) _then)
      : super(_value, (v) => _then(v as _RefreshList));

  @override
  _RefreshList get _value => super._value as _RefreshList;

  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_RefreshList(
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$_RefreshList implements _RefreshList {
  const _$_RefreshList(this.category);

  @override
  final Category category;

  @override
  String toString() {
    return 'ListEvent.refreshList(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RefreshList &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$RefreshListCopyWith<_RefreshList> get copyWith =>
      __$RefreshListCopyWithImpl<_RefreshList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Category category) fetchList,
    required TResult Function(Category category) refreshList,
  }) {
    return refreshList(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
    TResult Function(Category category)? refreshList,
  }) {
    return refreshList?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Category category)? fetchList,
    TResult Function(Category category)? refreshList,
    required TResult orElse(),
  }) {
    if (refreshList != null) {
      return refreshList(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchList value) fetchList,
    required TResult Function(_RefreshList value) refreshList,
  }) {
    return refreshList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchList value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
  }) {
    return refreshList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchList value)? fetchList,
    TResult Function(_RefreshList value)? refreshList,
    required TResult orElse(),
  }) {
    if (refreshList != null) {
      return refreshList(this);
    }
    return orElse();
  }
}

abstract class _RefreshList implements ListEvent {
  const factory _RefreshList(Category category) = _$_RefreshList;

  @override
  Category get category;
  @override
  @JsonKey(ignore: true)
  _$RefreshListCopyWith<_RefreshList> get copyWith =>
      throw _privateConstructorUsedError;
}
