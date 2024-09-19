import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';

import '../../common_widget/menu_item_row.dart';
import '../more/my_order_view.dart';
import 'item_details_view.dart';

class MenuItemsView extends StatefulWidget {
  final Map mObj;
  const MenuItemsView({super.key, required this.mObj});

  @override
  State<MenuItemsView> createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  TextEditingController txtSearch = TextEditingController();

  List menuItemsArr = [
    {
      "image": "assets/img/dessert1(espijo).jpg",
      "name": "Es Pisang Hijau",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe Healthy",
      "food_type": "Desserts"
    },
    {
      "image": "assets/img/dessert2(klepon).jpg",
      "name": "Klepon Warna Warni",
      "rate": "4.9",
      "rating": "124",
      "type": "Cakes by Irma",
      "food_type": "Desserts"
    },
    {
      "image": "assets/img/dessert3(bika).jpg",
      "name": "Bika Ambon",
      "rate": "4.9",
      "rating": "124",
      "type": "Cakes by Irma",
      "food_type": "Desserts"
    },
    {
      "image": "assets/img/dessert4(cucur).jpg",
      "name": "Kue Cucur",
      "rate": "4.9",
      "rating": "124",
      "type": "Warung Bu Tituk",
      "food_type": "Desserts"
    },
    {
      "image": "assets/img/dessert5(terang bulan).jpeg",
      "name": "Kue Terang Bulan",
      "rate": "4.9",
      "rating": "124",
      "type": "Cakes by Irmak",
      "food_type": "Desserts"
    },
    {
      "image": "assets/img/makanan1(nasgor).jpg",
      "name": "Nasi Goreng",
      "rate": "4.9",
      "rating": "124",
      "type": "Nasi Goreng Bang Nurdin",
      "food_type": "Makanan"
    },
    {
      "image": "assets/img/makanan2(pempek).jpg",
      "name": "Pempek",
      "rate": "4.9",
      "rating": "124",
      "type": "Diet Kapan Kapan",
      "food_type": "Makanan"
    },
    {
      "image": "assets/img/makanan3(papeda).jpg",
      "name": "Papeda Maknyus",
      "rate": "4.9",
      "rating": "124",
      "type": "Diet Kapan Kapan",
      "food_type": "Makanan"
    },
    {
      "image": "assets/img/makanan4(seruit).jpg",
      "name": "Seruit",
      "rate": "4.9",
      "rating": "124",
      "type": "Diet Kapan Kapan",
      "food_type": "Makanan"
    },
    {
      "image": "assets/img/makanan5(gi).jpg",
      "name": "Guho Ikan",
      "rate": "4.9",
      "rating": "124",
      "type": "Warung Bu Tituk",
      "food_type": "Makanan"
    },
    {
      "image": "assets/img/minuman1(sekoteng).jpg",
      "name": "Sekoteng",
      "rate": "4.9",
      "rating": "124",
      "type": "Sekoteng Bapak Udin",
      "food_type": "Minuman"
    },
    {
      "image": "assets/img/minuman2(ronde).jpg",
      "name": "Wedang Ronde",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe Healthy",
      "food_type": "Minuman"
    },
    {
      "image": "assets/img/minuman3(doger).png",
      "name": "Es Doger",
      "rate": "4.9",
      "rating": "124",
      "type": "Ongklok Wonosobo",
      "food_type": "Minuman"
    },
    {
      "image": "assets/img/minuman4(dawet).jpeg",
      "name": "Es Dawet",
      "rate": "4.9",
      "rating": "124",
      "type": "Ongklok Wonosobo",
      "food_type": "Minuman"
    },
    {
      "image": "assets/img/minuman5(pletok).jpg",
      "name": "Bir Pletok",
      "rate": "4.9",
      "rating": "124",
      "type": "Bir Pletok Ala Ala",
      "food_type": "Minuman"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        widget.mObj["name"].toString(),
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextfield(
                  hintText: "Search Food",
                  controller: txtSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      "assets/img/search.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: menuItemsArr.length,
                itemBuilder: ((context, index) {
                  var mObj = menuItemsArr[index] as Map? ?? {};
                  return MenuItemRow(
                    mObj: mObj,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ItemDetailsView()),
                      );
                    },
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
