import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';

import 'my_order_view.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  List aboutTextArr = [
    "Selamat datang di Nusantara Delight, aplikasi pengantaran makanan dan minuman yang dirancang untuk memanjakan Anda dengan berbagai pilihan kuliner terbaik dari seluruh Indonesia. Kami berkomitmen untuk memberikan pengalaman kuliner yang tidak terlupakan dengan menyediakan layanan pengantaran yang cepat, mudah, dan aman langsung ke pintu Anda.",
    "Di Nusantara Delight, misi kami adalah menghubungkan Anda dengan berbagai pilihan makanan dan minuman yang menggugah selera dari restoran dan kafe terbaik di Indonesia. Kami percaya bahwa makanan adalah lebih dari sekadar kebutuhan; makanan adalah bagian dari budaya, tradisi, dan kebahagiaan. Oleh karena itu, kami berusaha keras untuk memberikan akses ke hidangan lezat dan berkualitas tinggi dari berbagai daerah, kapan saja dan di mana saja Anda berada.",
    "Kami mengundang Anda untuk bergabung dengan komunitas Nusantara Delight dan menikmati berbagai hidangan lezat yang kami tawarkan. Unduh aplikasi kami, jelajahi menu yang ada, dan rasakan kemudahan serta kepuasan dari layanan pengantaran kami. Terima kasih telah memilih Nusantara Delight sebagai teman setia dalam perjalanan kuliner Anda.",
    "Untuk pertanyaan lebih lanjut atau dukungan, jangan ragu untuk menghubungi tim kami melalui fitur dukungan di aplikasi atau kunjungi situs web kami. Kami siap membantu Anda kapan saja!",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Image.asset("assets/img/btn_back.png",
                          width: 20, height: 20),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        "About Us",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyOrderView()));
                      },
                      icon: Image.asset(
                        "assets/img/shopping_cart.png",
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: aboutTextArr.length,
                itemBuilder: ((context, index) {
                  var txt = aboutTextArr[index] as String? ?? "";
                  return Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: TColor.primary,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            txt,
                            style: TextStyle(
                                color: TColor.primaryText, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
