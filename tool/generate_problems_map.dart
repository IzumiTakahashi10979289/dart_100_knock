import 'dart:io';

void main() async {
  final problemsDirectory = Directory('lib/problems');
  final mapFile = File('lib/constants/problems_map.dart');

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
        ..sort((a, b) => a.path.compareTo(b.path)); // 並び順きれいに！

  final buffer = StringBuffer();

  // 1. importを書く
  buffer.writeln("import 'package:dart_100_knock/problems.dart';\n");

  // 2. problemsマップ開始
  buffer.writeln('final problems = {');

  for (final file in files) {
    final filename = file.uri.pathSegments.last;
    final match = RegExp(r'problem(\d+)\.dart').firstMatch(filename);
    if (match != null) {
      final number = int.parse(match.group(1)!);
      final functionName = 'problem${number.toString().padLeft(3, '0')}';
      buffer.writeln('  $number: $functionName,');
    }
  }

  buffer.writeln('};');

  // ファイルに書き出し！
  await mapFile.writeAsString(buffer.toString());

  print('✅ lib/constants/problems_map.dart generated successfully!');
}
