import 'package:app_valtx_asistencia/app/models/response/response_items_model.dart';
import 'package:app_valtx_asistencia/app/models/response/response_orders_model.dart';

import 'package:app_valtx_asistencia/app/providers/general_provider.dart';
import 'package:get/get.dart';

class GeneralRepository {
	final _apiProvider = Get.find<GeneralProvider>();

  /* 📌 Para crear pedido */
	Future<ResponseOrdersModel> postCreateOrder(
	) =>
		_apiProvider.postCreateOrder();
  

  /* 📌 Obtener items*/
  Future<ResponseItemsModel> getItems(
	) =>
		_apiProvider.getItems();
    
  /* 📌 3*/
  /* 📌 4*/
  /* 📌 5*/
}
