import 'package:get/get.dart';
import 'package:state_management/model/product_model.dart';

class ProductController extends GetxController {
  RxList<ProductModel> listProduct = <ProductModel>[].obs;

  Future addCart(ProductModel model) async {
    listProduct.add(model);
    update();
  }

  Future deleteCart(ProductModel model) async {
    listProduct.remove(model);
    update();
  }
}
