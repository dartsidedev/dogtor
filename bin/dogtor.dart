import 'dart:io';

import 'package:dogtor/dogtor.dart' as dogtor;

Future<void> main(List<String> arguments) async {
  print('Dogtor CLI Hello woooorld: ${dogtor.calculate()}!');

  print('exists?');
  final e = await File('dogtorfile.dart').exists();
  final r = await File('exists.md').exists();
  final t = await File('doesnotexist.md').exists();
  print('eeee $e $r $t');
  // command line tool takes and executes the dogtor.dart file in
  // the main project
  final res = await Process.run('dart', ['dogtorfile.dart']);
  print('got result: $res');
  print('stdout ${res.stdout}');
}
