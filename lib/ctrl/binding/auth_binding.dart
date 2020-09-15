import 'package:get/get.dart';
import 'package:questster/controller/auth_contoller.dart';

class AuthBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}