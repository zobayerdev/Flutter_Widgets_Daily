import 'package:flutters_widgets_daily/features/api_file/model_class/product_model.dart';

class ProductsByRemarks {
  String? msg;
  List<ProductModel>? productsList;

  ProductsByRemarks({this.msg, this.productsList});


  // from json => json data ke format kore dart file e ditese !!!

  ProductsByRemarks.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      productsList = <ProductModel>[];
      json['data'].forEach((v) {
        productsList!.add(new ProductModel.fromJson(v));
      });
    }
  }

  // tojson => dart data ke json data te convert kore !!!
  //
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['msg'] = this.msg;
  //   if (this.productsList != null) {
  //     data['data'] = this.productsList!.map((v) => v.toJson()).toList();
  //   }
  //   return data;
  // }
}