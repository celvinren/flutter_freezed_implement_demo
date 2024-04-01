import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:fluttter_freezed_implements_demo/data_models/file_selection_converters.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'file_selection.dart' as file_selection;

part 'file_selection_mobile.freezed.dart';
part 'file_selection_mobile.g.dart';

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
    @Uint8ListConverter() Uint8List? bytes,
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
      path: path,
    );
  }
}
