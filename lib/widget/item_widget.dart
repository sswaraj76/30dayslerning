import 'package:codepur/widget/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/products.dart';

class ItemWidgets extends StatelessWidget {
  final Items items;

  const ItemWidgets({Key key, @required this.items})
      : assert(items != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Image.network(
          items.image,
          fit: BoxFit.contain,
        ).box.roundedSM.p8.color(MyTheme.creamcolor).make().p16().w40(context),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            items.name.text.bold.sm.make(),
            items.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mH8,
              children: [
                '₹ ${items.price.toString()}'.text.bold.make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(StadiumBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkCream)),
                    child: 'Buy'.text.make())
              ],
            )
          ],
        ))
      ],
    )).white.square(150).rounded.make().py8();
  }
}
