import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purse_shop_app/constants.dart';
import 'package:purse_shop_app/models/Product.dart';
import 'package:purse_shop_app/screens/details/components/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: product.color,
      body: Body(product: product,
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
