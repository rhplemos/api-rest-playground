import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty_playground/home/http/http_controller.dart';
import 'package:rick_and_morty_playground/model/user_model.dart';

class HttpPage extends GetView<HttpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Http'),
      ),
      body: controller.obx((state) {
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (_, index) {
            final UserModel item = state[index];
            return ListTile(
              title: Text(item.name ?? ''),
            );
          },
        );
      }, onError: (error) {
        return Center(child: Text(error ?? ''));
      }),
    );
  }
}
