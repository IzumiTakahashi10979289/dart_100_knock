import 'dart:io';

void main() async {
  final directory = Directory('lib/problems');

  // なければ作る
  if (!await directory.exists()) {
    await directory.create(recursive: true);
    print('Created lib/problems/ directory.');
  }

  for (int i = 1; i <= 100; i++) {
    final filename = 'problem${i.toString().padLeft(3, '0')}.dart';
    final file = File('${directory.path}/$filename');

    if (await file.exists()) {
      stdout.write('⚠️  $filename already exists. Overwrite? (y/n): ');
      final answer = stdin.readLineSync();
      if (answer?.toLowerCase() != 'y') {
        print('⏭️  Skipped: $filename');
        continue; // y以外ならスキップ
      }
    }

    await file.writeAsString('''
void problem${i.toString().padLeft(3, '0')}() {
  print('Problem $i is not solved yet.');
}
''');

    print('✅ Created/Overwritten: $filename');
  }

  print('🎉 Done generating all problem files!');
}
