import 'package:flutter/material.dart';
import 'package:food_delivery/common/color_extension.dart';
import 'package:food_delivery/common_widget/round_textfield.dart';

import '../../common_widget/category_cell.dart';
import '../../common_widget/most_popular_cell.dart';
import '../../common_widget/popular_resutaurant_row.dart';
import '../../common_widget/recent_item_row.dart';
import '../../common_widget/view_all_title_row.dart';
import '../more/my_order_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List catArr = [
    {"image": "assets/img/jawa.jpg", "name": "Jawa"},
    {"image": "assets/img/sumatra.jpg", "name": "Sumatra"},
    {"image": "assets/img/kalimantan.jpg", "name": "Kalimantan"},
    {"image": "assets/img/sulawesi.jpg", "name": "Sulawesi"},
    {"image": "assets/img/papua.jpg", "name": "Papua"},
  ];

  List popArr = [
    {
      "image": "assets/img/jawa.jpg",
      "name": "Warung Bu Tituk",
      "rate": "4.9",
      "rating": "124",
      "type": "Warung Makan",
      "food_type": "Khas Jawa"
    },
    {
      "image": "assets/img/mieongklok.jpg",
      "name": "Ongklok Wonosobo",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Khas Jawa"
    },
    {
      "image": "assets/img/wedangsekoteng.jpg",
      "name": "Sekoteng Bapak Udin",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Khas Sumatra"
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/img/promo1.jpg",
      "name": "Warung Bu Tituk",
      "rate": "4.9",
      "rating": "124",
      "type": "Warung Makan",
      "food_type": "Khas Jawa"
    },
    {
      "image": "assets/img/promo2.jpg",
      "name": "Ongklok Wonosobo",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Khas Jawa"
    },
  ];

  List recentArr = [
    {
      "image": "assets/img/makanan1(nasgor).jpg",
      "name": "Nasi Goreng by Josh",
      "rate": "4.9",
      "rating": "124",
      "type": "Warung Makan",
      "food_type": "Khas Kalimantan"
    },
    {
      "image": "assets/img/minuman5(pletok).jpg",
      "name": "Bir Pletok Ala Ala",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Khas Jawa"
    },
    {
      "image": "assets/img/minuman2(ronde).jpg",
      "name": "Cafe Healthy",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafe",
      "food_type": "Khas Sumatra"
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Good morning Tifah!",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivering to",
                      style:
                          TextStyle(color: TColor.secondaryText, fontSize: 11),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Sragi, Pekalongan",
                          style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          "assets/img/dropdown.png",
                          width: 12,
                          height: 12,
                        )
                      ],
                    )
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
                height: 30,
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: catArr.length,
                  itemBuilder: ((context, index) {
                    var cObj = catArr[index] as Map? ?? {};
                    return CategoryCell(
                      cObj: cObj,
                      onTap: () {},
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Popular Restaurants",
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: popArr.length,
                itemBuilder: ((context, index) {
                  var pObj = popArr[index] as Map? ?? {};
                  return PopularRestaurantRow(
                    pObj: pObj,
                    onTap: () {},
                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Find Discounts",
                  onView: () {},
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: mostPopArr.length,
                  itemBuilder: ((context, index) {
                    var mObj = mostPopArr[index] as Map? ?? {};
                    return MostPopularCell(
                      mObj: mObj,
                      onTap: () {},
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: "Recent Items",
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: recentArr.length,
                itemBuilder: ((context, index) {
                  var rObj = recentArr[index] as Map? ?? {};
                  return RecentItemRow(
                    rObj: rObj,
                    onTap: () {},
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
