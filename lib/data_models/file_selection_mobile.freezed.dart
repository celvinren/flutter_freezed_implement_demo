// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_selection_mobile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileSelection _$FileSelectionFromJson(Map<String, dynamic> json) {
  return _FileSelection.fromJson(json);
}

/// @nodoc
mixin _$FileSelection {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get bytes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileSelectionCopyWith<FileSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSelectionCopyWith<$Res> {
  factory $FileSelectionCopyWith(
          FileSelection value, $Res Function(FileSelection) then) =
      _$FileSelectionCopyWithImpl<$Res, FileSelection>;
  @useResult
  $Res call(
      {String id,
      String name,
      int size,
      String? path,
      @Uint8ListConverter() Uint8List? bytes});
}

/// @nodoc
class _$FileSelectionCopyWithImpl<$Res, $Val extends FileSelection>
    implements $FileSelectionCopyWith<$Res> {
  _$FileSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? size = null,
    Object? path = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileSelectionImplCopyWith<$Res>
    implements $FileSelectionCopyWith<$Res> {
  factory _$$FileSelectionImplCopyWith(
          _$FileSelectionImpl value, $Res Function(_$FileSelectionImpl) then) =
      __$$FileSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int size,
      String? path,
      @Uint8ListConverter() Uint8List? bytes});
}

/// @nodoc
class __$$FileSelectionImplCopyWithImpl<$Res>
    extends _$FileSelectionCopyWithImpl<$Res, _$FileSelectionImpl>
    implements _$$FileSelectionImplCopyWith<$Res> {
  __$$FileSelectionImplCopyWithImpl(
      _$FileSelectionImpl _value, $Res Function(_$FileSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? size = null,
    Object? path = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_$FileSelectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileSelectionImpl extends _FileSelection {
  _$FileSelectionImpl(
      {required this.id,
      required this.name,
      required this.size,
      this.path,
      @Uint8ListConverter() this.bytes})
      : super._();

  factory _$FileSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileSelectionImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int size;
  @override
  final String? path;
  @override
  @Uint8ListConverter()
  final Uint8List? bytes;

  @override
  String toString() {
    return 'FileSelection(id: $id, name: $name, size: $size, path: $path, bytes: $bytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileSelectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, size, path,
      const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileSelectionImplCopyWith<_$FileSelectionImpl> get copyWith =>
      __$$FileSelectionImplCopyWithImpl<_$FileSelectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileSelectionImplToJson(
      this,
    );
  }
}

abstract class _FileSelection extends FileSelection {
  factory _FileSelection(
      {required final String id,
      required final String name,
      required final int size,
      final String? path,
      @Uint8ListConverter() final Uint8List? bytes}) = _$FileSelectionImpl;
  _FileSelection._() : super._();

  factory _FileSelection.fromJson(Map<String, dynamic> json) =
      _$FileSelectionImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get size;
  @override
  String? get path;
  @override
  @Uint8ListConverter()
  Uint8List? get bytes;
  @override
  @JsonKey(ignore: true)
  _$$FileSelectionImplCopyWith<_$FileSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
