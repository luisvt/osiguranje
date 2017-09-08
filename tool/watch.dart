import 'package:build_runner/build_runner.dart';
import 'package:dson/phase.dart';


main() async {
  await watch(
      [dsonPhase()],
      deleteFilesByDefault: true);
}