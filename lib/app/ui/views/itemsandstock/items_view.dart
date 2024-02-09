import 'package:app_valtx_asistencia/app/ui/components/buttons/btn_primary.dart';
import 'package:app_valtx_asistencia/app/ui/views/home/home_controller.dart';
import 'package:app_valtx_asistencia/app/ui/views/itemsandstock/items_controller.dart';
import 'package:app_valtx_asistencia/app/ui/views/itemsandstock/widgets/data_table_list_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemView extends StatelessWidget {
  const ItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsController>(
      init: ItemsController(),
      builder: (controller) {
      Widget createOrder = BtnPrimary(
        text: 'Buscar',
        onTap: () async{
          await controller.postgetItemsAndStock();
        },
      );

      return Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                  child: Container(
                    height: 30,
                    width: 200,
                margin: const EdgeInsets.symmetric(vertical:20,horizontal: 50),
                color: Colors.transparent,
                child: createOrder,
              )),
              Expanded(child: DataTableListAndStock()),
            ],
          ),

          Positioned(
                  top: 0.0,
                  right: 15.0,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Obx(() => Visibility(
                        visible: controller.showToast.value,
                        child: controller.toast)),
                  ),
                ),
        ],
      );
    });
  }
}
