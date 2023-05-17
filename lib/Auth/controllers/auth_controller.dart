import 'package:get/get.dart';

import 'cache_manager.dart';

class AuthManager extends GetxController with CacheManager {
  final isLogged = false.obs;

  void logout() {
    removeToken();
    final token = getToken();
    isLogged.value = token != null;
  }

  void login(String? token) async {
    isLogged.value = token != null;
    await saveToken(token);
  }

  void checkLogin() {
    final token = getToken();
    var loginCheck = (token != null);
    isLogged.value = loginCheck;
  }
}
