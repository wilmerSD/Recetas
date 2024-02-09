import 'package:app_valtx_asistencia/app/models/response/response_items_model.dart';
import 'package:app_valtx_asistencia/app/models/response/response_orders_model.dart';
import 'package:app_valtx_asistencia/core/network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class GeneralProvider {
  final _dioClient = Get.find<DioClient>();
    final dio = Dio();
  /* 📌 Para crear pedido */
  Future<ResponseOrdersModel> postCreateOrder() async {
    final response = await dio.post('https://11b9-2803-a3e0-1357-bc70-e5cb-536f-aa14-e7f3.ngrok-free.app/api/orders');
    return ResponseOrdersModel.fromJson(response.data);
  }

  /* 📌 Obtener items*/
  Future<ResponseItemsModel> getItems() async {
    final response = await _dioClient.get(
      path: "/api/items",
    );
    return ResponseItemsModel.fromJson(response);
  }

  /* 📌 3*/
  /* 📌 4*/
  /* 📌 5*/
}
