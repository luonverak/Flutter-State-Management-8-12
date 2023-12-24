import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello World %s',
        },
        'en_US': {
          'title': 'HomeScreen',
        },
        'kh_KHR': {
          'title': 'ទំព័រដំបូង',
        },
        'pt_BR': {
          'title': 'Olá do Brasil',
        },
      };
}
