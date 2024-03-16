// lib/env/env.dart
import 'package:envied/envied.dart';

/*!incase the below file gets deleted, first delete the pubspec.lock file and 
then run the command "dart run build_runner build --delete-conflicting-outputs" in the terminal
*/

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'BASE_URL')
  static const String baseUrl = _Env.baseUrl;
}
