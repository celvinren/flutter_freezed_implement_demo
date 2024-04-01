import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_selection.dart' as file_selection;
import 'file_selection_converters.dart';

part 'file_selection_web.freezed.dart';
part 'file_selection_web.g.dart';

@freezed
class FileSelection
    with _$FileSelection
    implements file_selection.FileSelection {
  FileSelection._();
  factory FileSelection({
    required String id,
    required String name,
    required int size,
    String? path,
    @Uint8ListConverter() required Uint8List? bytes,
    @StreamConverter() Stream<List<int>>? readStream,
  }) = _FileSelection;

  factory FileSelection.fromJson(Map<String, dynamic> json) =>
      _$FileSelectionFromJson(json);
}

extension FileSelectionX on PlatformFile {
  Stream<FileSelection> toFileSelection() async* {
    yield FileSelection(
      id: name,
      name: name,
      size: size,
      bytes: bytes,
      readStream: null,
    );

    await Future.delayed(const Duration(seconds: 2));

    BytesBuilder bytesBuilder = BytesBuilder();
    await for (final chunk in readStream!) {
      bytesBuilder.add(chunk);
    }

    yield FileSelection(
      id: name,
      name: name,
      size: size,
      bytes: bytesBuilder.takeBytes(),
      readStream: null,
    );
  }
}
