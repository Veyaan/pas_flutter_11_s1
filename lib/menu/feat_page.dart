import 'package:flutter/material.dart';

import 'package:pas_flutter_11_s1/routes.dart';
import 'package:get/get.dart';
import 'package:pas_flutter_11_s1/controllers/team_controller.dart';

class Feat extends StatelessWidget {
  const Feat({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ListMakananController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Teams Page"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 750,
              child: Obx(
                    () => ListView.builder(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  itemCount: controller.dataMakanan.length,
                  itemBuilder: (context, index) {
                    final makanan = controller.dataMakanan[index];
                    return Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(12),
                                ),
                                child: Image.asset(
                                  makanan.gambarPath,
                                  height: 90,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Container(
                                        height: 90,
                                        color: Colors.grey[300],
                                        child: const Icon(Icons.fastfood),
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      makanan.namaMakanan,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      "Rp"+(makanan.harga.toString()),
                                      style: TextStyle(
                                        color: Colors.green[700],
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}