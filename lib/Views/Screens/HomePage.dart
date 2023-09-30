import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Modal/APIs_Modal.dart';
import '../../controller/API_Controller.dart';

class HomePage extends StatelessWidget {

  APIsController apIsController = Get.put(APIsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Oceanmtech"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.grey.shade200,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Name : A to Z",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Name : Z to A",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Category : A to Z",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Category : Z to A",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Ratings",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Price : High to Low",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 160,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Price : Low to High",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              flex: 9,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.grey.shade200,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Obx(() => apIsController.isLoading.value
                          ? Center(
                              child: CircularProgressIndicator(),
                            )
                          : ListView.builder(
                              itemCount: apIsController.assets?.length,
                              itemBuilder: (context, i) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10, top: 10),
                                  child: Card(
                                      color: Colors.white,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        alignment: Alignment.center,
                                        height: 150,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 5,
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                      width: 100,
                                                      height: 120,
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          child: Image.network(
                                                           apIsController.assets![i].Image,
                                                            fit: BoxFit.cover,
                                                          ))),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 9,
                                              child: Container(),
                                            ),
                                          ],
                                        ),
                                      )),
                                );
                              },
                            )),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
