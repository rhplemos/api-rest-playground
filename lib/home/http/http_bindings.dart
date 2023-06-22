import 'package:get/get.dart';
import 'package:rick_and_morty_playground/home/http/http_controller.dart';
import 'package:rick_and_morty_playground/home/http/repository/user_http_repository.dart';

import '../../repository/i_user_repository.dart';

class HttpBindings implements Bindings {

  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}