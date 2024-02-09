import 'package:app_valtx_asistencia/app/ui/components/buttons/btn_primary.dart';
import 'package:app_valtx_asistencia/app/ui/views/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateOrder extends StatelessWidget {
  const CreateOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      Widget createOrder = BtnPrimary(
        text: 'Crear pedido',
        onTap: () async{
         await controller.postCreateOrder();
        },
      );

      return Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.center,
                  child: Container(
                margin: const EdgeInsets.symmetric(vertical: 250, horizontal: 500),
                color: Colors.transparent,
                child: createOrder,
              ))
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
