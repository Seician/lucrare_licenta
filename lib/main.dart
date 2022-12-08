import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopping_app/utils/scroll_behavior.dart';
import 'components/colors.dart';
import 'controllers/cart_controller.dart';
import 'controllers/popular_product.dart';
import 'controllers/product_controller.dart';
import 'helper/dependencies.dart' as di;
import 'routes/route_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartsData();
    return GetBuilder<ProductController>(builder: (_) {
      return GetBuilder<PopularProduct>(builder: (_) {
        return GetMaterialApp(
          scrollBehavior: AppScrollBehavior(),
          debugShowCheckedModeBanner: false,
          title: 'Lucrare Licenta',
          theme: ThemeData(
            primaryColor: AppColors.mainColor,
            fontFamily: "Lato",
          ),
          initialRoute: RouteHelper.getSplashRoute(),
          getPages: RouteHelper.routes,
          defaultTransition: Transition.topLevel,
        );
      });
    });
  }
}
