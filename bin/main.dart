import 'package:dart_100_knock/constants/problems_map.dart'; // ★こっちをimportする！

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('実行したい問題番号を指定してね！ (例: dart run bin/main.dart 1)');
    return;
  }

  final problemNumber = int.tryParse(arguments.first);
  if (problemNumber == null || !problems.containsKey(problemNumber)) {
    print('存在しない問題番号だよ！');
    return;
  }

  problems[problemNumber]!(); // 問題を実行する！
}
