import 'package:get/get.dart';
import 'package:rick_and_morty_playground/repository/i_user_repository.dart';

class HttpController extends GetxController with StateMixin {
  final IUserRepository _httRepository;

  HttpController(this._httRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final response = await _httRepository.findAllUser();
      change(response, status: RxStatus.success());
    } catch(e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }
}