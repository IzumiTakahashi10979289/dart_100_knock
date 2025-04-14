import 'dart:io';

void main() async {
  final problemsDirectory = Directory('lib/problems');
  final exportFile = File('lib/problems.dart');

  if (!await problemsDirectory.exists()) {
    print('❌ Directory lib/problems not found.');
    return;
  }

  final files =
      problemsDirectory
          .listSync()
          .whereType<File>()
          .where((file) => file.path.endsWith('.dart'))
          .toList()
        ..sort((a, b) => a.path.compareTo(b.path)); // 並び順きれいにする

  final buffer = StringBuffer();

  for (final file in files) {
    final filename = file.uri.pathSegments.last;
    buffer.writeln("export 'problems/$filename';");
  }

  await exportFile.writeAsString(buffer.toString());

  print('✅ lib/problems.dart generated successfully!');
}
