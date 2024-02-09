import 'package:app_valtx_asistencia/app/ui/components/alert_dialog_component.dart';
import 'package:app_valtx_asistencia/app/ui/components/tables/datatable2.dart';
import 'package:app_valtx_asistencia/app/ui/components/tables/table_primary.dart';
import 'package:app_valtx_asistencia/app/ui/views/itemsandstock/items_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataTableListAndStock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ItemsController>(
      builder: ((controller) => Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(15.0),
            child: Obx(
              () => Column(
                children: [
                  Expanded(
                    child: TablePrimary(
                      minWidth: 1650.0,
                      columns: [
                        CustomColumn("N°",
                            columnSize: ColumnSize.XXS),
                        CustomColumn("Nombre",
                            columnSize: ColumnSize.S),
                        CustomColumn("Stock", columnSize: ColumnSize.S)
                      ].where((element) => !element.isObscure!).toList(),
                      rows: List<CustomRow>.generate(
                        controller.responseListAndStock.length,
                        (index) {
                          final item = controller.responseListAndStock[index];
                          int increment = 0;
                          return CustomRow(
                            cells: [
                              CustomCell('${increment++}'),
                              CustomCell(item.name ?? ''),
                              CustomCell('${item.stock ?? ''}'),
                            ].where((element) => !element.isObscure!).toList(),
                          );
                        },
                      ),
                    ),
                  ),
                  /* controller.responseListAndStock.isEmpty
                      ? const SizedBox()
                      : /* Container(
                          height: 20,
                          color: Colors.amber,
                        ), */
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Obx(
                                () => Text(
                                  /* "${(controller.page - 1) * kSizePage + 1} - ${(controller.page - 1) * kSizePage + controller.listJustifications} de ${controller.pageSize} registro(s)", */
                                  "${controller.pageIndex} - ${controller.countPage} de ${controller.countItem} registro(s)",
                                  style: const TextStyle(
                                      color: AppColors.blueDark,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              const SizedBox(width: 15.0),
                              Row(
                                children: [
                                  Obx(
                                    () => PaginatorButton(
                                      isBack: true,
                                      isActive: controller.pageIndex > 1,
                                      onTap: () {
                                        controller.page--;
                                        controller.getAllRequests(
                                            controller.isToLeader.value, true);
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Obx(
                                    () => PaginatorButton(
                                      isBack: false,
                                      isActive: controller.pageIndex <
                                          controller.countPage.value,
                                      onTap: () {
                                        controller.page++;
                                        controller.getAllRequests(
                                            controller.isToLeader.value, true);
                                      },
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ), */
                ],
              ),
            ),
          )),
    );
  }
}
