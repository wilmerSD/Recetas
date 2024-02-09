import 'package:animate_do/animate_do.dart';
import 'package:app_valtx_asistencia/app/ui/components/helpers_components.dart';
import 'package:app_valtx_asistencia/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class Toast extends StatelessWidget {
  const Toast(
      {Key? key,
      required this.icon,
      required this.typeToast,
      required this.text})
      : super(key: key);
  final int icon;
  final String typeToast;
  final String text;
  @override
  Widget build(BuildContext context) {
    return BounceInRight(
      animate: true,
      duration: const Duration(milliseconds: 100),
      child: Container(
        padding: const EdgeInsets.only(left: 15.0, right: 25.0),
        //   width: 280.0,
        height: 50.0,
        decoration: BoxDecoration(
          gradient: typeToast == "success"
              ? LinearGradient(
                  colors: [
                    AppColors.green,
                    AppColors.green02,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
              : typeToast == "error"
                  ?  LinearGradient(
                      colors: [
                        AppColors.red, // Color de inicio del degradado
                        AppColors.light
                            , // Color de final del degradado
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    )
                  : LinearGradient(
                      colors: [
                        AppColors
                            .orangeCustom, // Color de inicio del degradado
                        AppColors.orangeCustom, // Color de final del degradado
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
          /* color: typeToast == "success"
              ? AppColors.primaryGreen
              : typeToast == "error"
                  ? Colors.red
                  : AppColors.orange, */
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 209, 209, 209).withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 5,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HelpersComponents.pathAssetIcons(
                icon == 0
                    ? "tick-circle.png"
                    : icon == 1
                        ? "close-circle.png"
                        : icon == 2
                            ? "info-circle.png"
                            : "danger.png",
                Colors.white),

            const SizedBox(
              width: 8.0,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 12.0),
            ),
            // Row(
          ],
        ),
      ),
    );
  }

  // static String getErrorTitle(String text) {
  //   if (text.contains('NOT_INTERNET_EXCEPTION')) return 'Ooops!';

  //   switch (text) {
  //     case 'TIME_OUT':
  //       return 'Sin respuesta';
  //     case 'INVALID_TOKEN':
  //       return 'sesión expirada';
  //     case 'SERVER_ERROR':
  //       return 'Error';
  //     case 'REQUIRED':
  //       return 'Información';
  //     case 'DUPLICATE_KEY_ERROR':
  //       return messageErrorValRepeat;
  //     default:
  //       return 'Error';
  //   }
  // }
}
