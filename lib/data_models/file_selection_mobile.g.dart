// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_selection_mobile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileSelectionImpl _$$FileSelectionImplFromJson(Map<String, dynamic> json) =>
    _$FileSelectionImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      size: json['size'] as int,
      path: json['path'] as String?,
      bytes: const Uint8ListConverter().fromJson(json['bytes'] as List?),
    );

Map<String, dynamic> _$$FileSelectionImplToJson(_$FileSelectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'size': instance.size,
      'path': instance.path,
      'bytes': const Uint8ListConverter().toJson(instance.bytes),
    };
