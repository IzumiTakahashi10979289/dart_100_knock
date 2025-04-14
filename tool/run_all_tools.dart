import 'dart:io';

void main() async {
  print('🚀 スクリプト一括実行スタート！\n');

  final scripts = [
    'tool/generate_problems.dart',
    'tool/generate_exports.dart',
    'tool/generate_problems_map.dart',
  ];

  for (final script in scripts) {
    print('👉 実行中: $script');
    final result = await Process.run('dart', ['run', script]);

    if (result.exitCode == 0) {
      print('✅ 成功: $script\n');
    } else {
      print('❌ エラー: $script');
      print(result.stderr);
      exit(1); // どれか失敗したら止める
    }
  }

  print('🎉 全スクリプト完了！！');
}
