import 'package:app_valtx_asistencia/app/ui/views/home/home_binding.dart';
import 'package:app_valtx_asistencia/app/ui/views/home/home_view.dart';
import 'package:app_valtx_asistencia/app/ui/views/itemsandstock/home_binding.dart';
import 'package:app_valtx_asistencia/app/ui/views/itemsandstock/items_view.dart';
import 'package:app_valtx_asistencia/app/ui/views/splash/splash_binding.dart';
import 'package:app_valtx_asistencia/app/ui/views/splash/splash_view.dart';
import 'package:app_valtx_asistencia/routes/app_routes_name.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  static final routes = [
     GetPage(
      name: AppRoutesName.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: AppRoutesName.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),

    GetPage(
      name: AppRoutesName.ITEMS,
      page: () => const ItemView(),
      binding: itemBinding(),
    ),
  ];
}
