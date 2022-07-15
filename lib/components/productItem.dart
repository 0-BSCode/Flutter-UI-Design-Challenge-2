import 'package:flutter/material.dart';
import 'package:ui_design_2/theme.dart';
import 'package:ui_design_2/utils/addSpacing.dart';

class ProductItem extends StatelessWidget {
  final Map<String, dynamic> productData;
  final double width;
  const ProductItem({Key? key, required this.productData, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final height = width * 4 / 3;
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
      ),
      width: width,
      height: height + 40,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/${productData['image']}",
                    width: width * 0.80,
                  ),
                ),
                Expanded(
                  child: Center(),
                ),
                Text(
                  "${productData['name']}",
                  style: textTheme.headline6,
                ),
                addVerticalSpace(5),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 15,
                        ),
                      ),
                      TextSpan(
                        text: '${productData['rest']}',
                        style: textTheme.caption,
                      )
                    ],
                  ),
                ),
                addVerticalSpace(5),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.star,
                                color: COLOR_ORANGE,
                                size: 15,
                              ),
                            ),
                            TextSpan(
                              text: '${productData['rating']}',
                              style: textTheme.subtitle2!.apply(
                                fontWeightDelta: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: RichText(
                        textAlign: TextAlign.right,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '${productData['currency']}',
                              style: textTheme.subtitle2!.apply(
                                fontWeightDelta: 4,
                              ),
                            ),
                            TextSpan(
                              text: '${productData['price']}',
                              style: textTheme.headline5!.apply(
                                color: COLOR_ORANGE,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
