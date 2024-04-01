import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';

abstract class FileSelection {
  String get id;
  String get name;
  int get size;
  Uint8List? get bytes;
  String? get path;

  // Future<void> getThumbnailBytes();
}

extension FileSelectionX on PlatformFile {
  Stream<FileSelection> toFileSelection() async* {}
}
