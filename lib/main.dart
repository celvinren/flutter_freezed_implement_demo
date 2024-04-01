import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttter_freezed_implements_demo/data_models/file_selection.dart'
    if (dart.library.html) 'package:fluttter_freezed_implements_demo/data_models/file_selection_web.dart'
    if (dart.library.io) 'package:fluttter_freezed_implements_demo/data_models/file_selection_mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends HookWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final fileSelection = useState<FileSelection?>(null);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                final result = await FilePicker.platform.pickFiles(
                  type: FileType.media,
                  allowMultiple: true,
                  withReadStream: kIsWeb ? true : false,
                );
                await Future.delayed(const Duration(seconds: 2));

                final platformFile = result?.files.first;
                final fileSelectionStream =
                    platformFile?.toFileSelection().asBroadcastStream();
                await for (final file
                    in fileSelectionStream!.asBroadcastStream()) {
                  print('file: ${file.size}');
                  print('file: ${file.bytes?.length}');
                  fileSelection.value = file;
                }
              },
              child: const Text('Select Image'),
            ),
            if (fileSelection.value != null)
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red, width: 3),
                ),
                child: kIsWeb
                    ? (fileSelection.value!.bytes == null
                        ? const SizedBox(
                            width: 200,
                            height: 200,
                            child: CircularProgressIndicator())
                        : Image.memory(fileSelection.value!.bytes!))
                    : Image.file(File(fileSelection.value!.path!)),
              )
          ],
        ),
      ),
    );
  }
}
