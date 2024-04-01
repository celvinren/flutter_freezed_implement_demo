import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

class Uint8ListConverter implements JsonConverter<Uint8List?, List<dynamic>?> {
  const Uint8ListConverter();

  @override
  Uint8List? fromJson(List<dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Uint8List.fromList(json.cast<int>());
  }

  @override
  List<dynamic>? toJson(Uint8List? object) {
    if (object == null) {
      return null;
    }

    return object.toList();
  }
}

class StreamConverter
    implements JsonConverter<Stream<List<int>>?, List<dynamic>?> {
  const StreamConverter();

  @override
  Stream<List<int>>? fromJson(List<dynamic>? json) {
    return null;
  }

  @override
  List<dynamic>? toJson(Stream<List<int>>? object) {
    return null;
  }
}
