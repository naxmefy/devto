import 'package:devto/util/util.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvUtil {
  static Future<void> init() async {
    await DotEnv().load('.env');
    _initAssert();
  }

  static void _initAssert() {
    assert(StringUtil.isNotNullOrEmpty(apiSecret));
  }

  static String get apiSecret => DotEnv().env['API_SECRET'];
}
