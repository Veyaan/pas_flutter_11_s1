import 'package:flutter/material.dart';
import 'package:pas_flutter_11_s1/controllers/detail_makanan_controller.dart';
import 'package:get/get.dart';
import 'package:pas_flutter_11_s1/components/custom_textfield.dart';
import 'package:pas_flutter_11_s1/components/custom_button.dart';
import 'package:pas_flutter_11_s1/components/custom_text.dart';

class DetailMakananPage extends StatelessWidget {
  DetailMakananPage({super.key});

  final jumlah = TextEditingController();
  var hasilHitung = 0.0.obs;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailMakananController());

    return Scaffold(
      backgroundColor: const Color(0xFFF3EBE0),
      appBar: AppBar(
        title: const Text("Detail Makanan"),
        backgroundColor: const Color(0xFFA93A3A),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            const SizedBox(height: 10),

            Text(
              controller.makanan.namaMakanan,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF70712E),
              ),
            ),

            const SizedBox(height: 8),

            Image.asset(
              controller.makanan.gambarPath,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),

            Text(
              "Harga: ${controller.makanan.harga}",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),

            const SizedBox(height: 12),

            Text(
              "Rating: ${controller.makanan.rating}",
              style: const TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 16),

            const Text(
              "Deskripsi:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),

            const SizedBox(height: 5),

            Text(
              controller.makanan.deskripsi,
              style: const TextStyle(fontSize: 15),
            ),

            const SizedBox(height: 16),

            const Text(
              "Review:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 6, 2, 0),
              ),
            ),

            const SizedBox(height: 5),

            Text(
              controller.makanan.review,
              style: const TextStyle(fontSize: 15),
            ),
            
            SizedBox(height: 30),

            CustomTextField(
              hint: "Jumlah makanan",
              txtController: jumlah,
            ),

            SizedBox(height: 5),

            CustomButton(
            text: "Beli",
            onPressed: () {
              if (jumlah.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Angka tidak boleh kosong"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                return;
              }else{
                hasilHitung.value = controller.makanan.harga*jumlah*0.05;
              }
            },
          ),

          SizedBox(height: 10),

          Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 234, 160, 124),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              child: Obx(
                () => CustomText(
                  text: hasilHitung.value.toString(),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 11, 11, 11),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}