import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/controllers/popular_product_controller.dart';
import 'package:flutter_complete_guide/pages/food/popular_food_detail.dart';
import 'package:flutter_complete_guide/pages/food/recommended_food_detail.dart';
import 'package:flutter_complete_guide/pages/home/main_food_page.dart';
import 'package:flutter_complete_guide/routes/route_helper.dart';
import 'package:get/get.dart';
import 'controllers/recommended_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  // this method will make sure that our dependencies are loaded corectly
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
