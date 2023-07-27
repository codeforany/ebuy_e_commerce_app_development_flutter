import 'package:flutter/material.dart';

import '../../common/color_extension.dart';
import '../../common_widget/home_styles_cell.dart';
import '../../common_widget/icon_text_button.dart';
import '../../common_widget/product_cell.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  List listArr = [
    {
      "name": "Handbag LV",
      "price": "\$225",
      "image": "assets/img/handbag.png",
      "is_fav": true
    },
    {
      "name": "Dress",
      "price": "\$87",
      "image": "assets/img/summer_co_ords.png",
      "is_fav": false
    },
    {
      "name": "Shoes",
      "price": "\$201",
      "image": "assets/img/3.png",
      "is_fav": false
    },
    {
      "name": "T-shirt",
      "price": "\$86",
      "image": "assets/img/t-shirt.png",
      "is_fav": true
    },
    {
      "name": "Handbag",
      "price": "\$102",
      "image": "assets/img/4.png",
      "is_fav": false
    },
    {
      "name": "Shot",
      "price": "\$98",
      "image": "assets/img/2.png",
      "is_fav": false
    },
    {
      "name": "Handbag LV",
      "price": "\$225",
      "image": "assets/img/handbag.png",
      "is_fav": true
    },
    {
      "name": "Dress",
      "price": "\$87",
      "image": "assets/img/summer_co_ords.png",
      "is_fav": false
    },
    {
      "name": "Shoes",
      "price": "\$201",
      "image": "assets/img/3.png",
      "is_fav": false
    },
    {
      "name": "T-shirt",
      "price": "\$86",
      "image": "assets/img/t-shirt.png",
      "is_fav": true
    },
    {
      "name": "Handbag",
      "price": "\$102",
      "image": "assets/img/4.png",
      "is_fav": false
    },
    {
      "name": "Shot",
      "price": "\$98",
      "image": "assets/img/2.png",
      "is_fav": false
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
        elevation: 0.5,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/img/back.png",
              width: 20,
              height: 20,
              color: TColor.secondaryText,
            )),
        title: Text(
          "New Tend",
          style: TextStyle(color: TColor.primaryText, fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/img/cart_tab.png",
                width: 22,
                height: 22,
                color: TColor.primaryText,
              ))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: IconTextButton(
                    title: "Sort",
                    icon: "assets/img/sort-tool.png",
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: IconTextButton(
                    title: "Filter",
                    icon: "assets/img/filter.png",
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: 1.1),
                itemCount: listArr.length,
                itemBuilder: (context, index) {
                  var pObj = listArr[index] as Map? ?? {};

                  return ProductCell(
                    pObj: pObj,
                    onPressed: () {},
                    onFavPressed: () {},
                    onLikePressed: () {},
                  );
                }),
          )
        ],
      ),
    );
  }
}
