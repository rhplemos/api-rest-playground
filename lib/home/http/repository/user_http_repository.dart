import 'dart:convert';

import 'package:rick_and_morty_playground/model/user_model.dart';
import 'package:rick_and_morty_playground/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUser() async {
    final response = await http.get(Uri.parse('https://6494d14fb08e17c917916912.mockapi.io/api/v1/users'));

    if (response.statusCode == 200) {
      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();

    } else {
      throw Exception('Falha ao obter os usuários');
    }
  }
}
