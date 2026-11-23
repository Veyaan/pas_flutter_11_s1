import 'package:pas_flutter_11_s1/models/makanan_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController{

  List<MakananModel> dataMakanan = [
    MakananModel(namaMakanan: "Mie Ayam Bakso", harga: 20000, rating: "⭐⭐⭐⭐⭐", review: "Mie nya enak kuahnya mantap", deskripsi: "Mie ayam dengan kuah kaldu kuning yang gurih dan kaya rempah, disajikan lengkap dengan bakso,, irisan telur, serta taburan bawang goreng.", gambarPath: "assets/images/soto.jpg"),
    MakananModel(namaMakanan: "Ayam Bakar Madu", harga: 30000, rating: "⭐⭐⭐⭐", review: "Sambelnya enak bikin nagih", deskripsi: "Ayam bakar bersama sambal bawang ulek segar yang pedasnya nampol dan bikin ketagihan, cocok disantap dengan nasi hangat.", gambarPath: "assets/images/geprek.jpg"),
    MakananModel(namaMakanan: "Sate Ayam Madura", harga: 28000, rating: "⭐⭐⭐⭐", review: "Satenya lembut dan tidak alot, enak sekali", deskripsi: "Potongan daging ayam empuk pilihan yang dibakar menggunakan arang, disajikan dengan bumbu kecap manis, irisan bawang merah segar, dan potongan cabai rawit.", gambarPath: "assets/images/sate.jpg"),
    MakananModel(namaMakanan: "Es Teh Manis Jumbo", harga: 8000, rating: "⭐⭐⭐⭐⭐", review: "Es teh nya enak dan segar", deskripsi: "Es teh manis dengan daun teh pilihan yang disajikan dingin.", gambarPath: "assets/images/gulai.jpg"),
    MakananModel(namaMakanan: "Nasi Goreng Spesial", harga: 25000, rating: "⭐⭐⭐⭐⭐", review: "Nasi gorengnya enak sekali", deskripsi: "Nasi goreng yang disajikan dengan telur dadar, ayam suwir, dan bumbu rempah yang lezat.", gambarPath: "assets/images/nasi.jpg"),
  ].obs;
}

