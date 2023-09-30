import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_api/Modal/APIs_Modal.dart';
import 'package:http/http.dart' as http;

class APIsController extends GetxController {

  APIsModal? apisModal;

  var isLoading = false.obs;

  RxList<APIsModal>? assets = [].obs;
  // RxList assets = [].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      String APi =
          "https://praticle-service.s3.ap-south-1.amazonaws.com/red_and_white_api.json";
      isLoading(true);
      http.Response res = await http.get(
        Uri.parse(APi),
      );
      if (res.statusCode == 200) {
        var result = jsonDecode(res.body);

       apisModal = APIsModal.fromjson(result);

      } else {
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }
}
