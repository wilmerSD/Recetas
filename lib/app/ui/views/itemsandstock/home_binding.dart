
import 'package:app_valtx_asistencia/app/ui/views/itemsandstock/items_controller.dart';
import 'package:get/get.dart';

class itemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemsController());
  }
}
