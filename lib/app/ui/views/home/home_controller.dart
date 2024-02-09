import 'package:app_valtx_asistencia/app/local/storage_service.dart';
import 'package:app_valtx_asistencia/app/models/request/request_user_information_model.dart';
import 'package:app_valtx_asistencia/app/repositories/general_repositori.dart';
import 'package:app_valtx_asistencia/app/repositories/user_repositori.dart';
import 'package:app_valtx_asistencia/app/ui/components/toast.dart';
import 'package:app_valtx_asistencia/core/helpers/helpers.dart';
import 'package:app_valtx_asistencia/core/helpers/keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    /* _initialize(); */
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //Instance
  final _userRepository = Get.find<UserRepository>();
  final _generalRepository = Get.find<GeneralRepository>();

  //Variable

  //TextEditingController

  //Function
  void _initialize() async {
    final response = await _userRepository.getUserInformation(
      RequestUserInformationModel(
        username: await StorageService.get(Keys.kUserName),
        password: await StorageService.get(Keys.kPassword),
      ),
    );

    if (!response.success) {
      print("error: ${response.statusMessage}");
      return;
    }
  }
  
  Future<void> postCreateOrder() async {
    try{
      print("pasa por aqui");
      final response = await _generalRepository.postCreateOrder();
      print("pasa por aqui2");
      /* var a = response.data;
      var e = a.!recipe; */
      showToastNow(0, "success", "Creado con éxito");
      return;
    }catch(e){
      showToastNow(3, "error",
          "Ups... Ocurrio un error inesperado");
    }
    finally{

    }
  }
  
  RxBool showToast = RxBool(false);
  Widget toast = const SizedBox();

  /* 📌 Mostrar Toast */
  void showToastNow(int icon, String type, String text) async {
    showToast.value = true;
    toast = Toast(icon: icon, typeToast: type, text: text);
    await Future.delayed(const Duration(milliseconds: 2500));
    showToast.value = false;
  }
  
}
