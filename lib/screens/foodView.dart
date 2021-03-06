import 'package:flutter/material.dart';
import 'package:ui_design_2/theme.dart';
import 'package:ui_design_2/utils/addSpacing.dart';
import 'package:slide_to_act/slide_to_act.dart';

class FoodView extends StatelessWidget {
  final Map<String, dynamic> productData;
  const FoodView({Key? key, required this.productData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: constraints.maxHeight * 0.4,
                                color: COLOR_GREEN,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          scale: 3,
                                          image: AssetImage(
                                              "assets/images/${productData['image']}"),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        top: 20,
                                        left: 20,
                                      ),
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.orange.shade200,
                                        border: Border.all(
                                          width: 1,
                                          color: COLOR_ORANGE,
                                        ),
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        style: ButtonStyle(
                                          overlayColor:
                                              MaterialStateColor.resolveWith(
                                            (states) =>
                                                Colors.orange.withOpacity(0.3),
                                          ),
                                        ),
                                        child: Text(
                                          "<",
                                          style: textTheme.headline6!.copyWith(
                                            color: Colors.orange,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              addVerticalSpace(60),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${productData['name']}",
                                          style: textTheme.headline6,
                                        ),
                                        addVerticalSpace(5),
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              const WidgetSpan(
                                                child: Icon(
                                                  Icons.location_on,
                                                  color: Colors.red,
                                                  size: 20,
                                                ),
                                                alignment:
                                                    PlaceholderAlignment.middle,
                                              ),
                                              WidgetSpan(
                                                child: Text(
                                                  '${productData['rest']}',
                                                  style: textTheme.caption,
                                                ),
                                                alignment:
                                                    PlaceholderAlignment.middle,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '${productData['currency']}',
                                            style: textTheme.subtitle2!.apply(
                                              fontWeightDelta: 4,
                                              color: COLOR_ORANGE,
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
                                  ],
                                ),
                              ),
                              addVerticalSpace(20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 25,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                WidgetSpan(
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.star,
                                                        color: COLOR_ORANGE,
                                                      ),
                                                      addHorizontalSpace(2),
                                                    ],
                                                  ),
                                                  alignment:
                                                      PlaceholderAlignment
                                                          .middle,
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${productData['rating']}",
                                                  style: textTheme.subtitle2!
                                                      .apply(
                                                    fontWeightDelta: 4,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                WidgetSpan(
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.punch_clock,
                                                        color: Colors.red,
                                                      ),
                                                      addHorizontalSpace(2),
                                                    ],
                                                  ),
                                                  alignment:
                                                      PlaceholderAlignment
                                                          .middle,
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${productData['deliveryTime']}",
                                                  style: textTheme.subtitle2!
                                                      .apply(
                                                    fontWeightDelta: 4,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              children: [
                                                WidgetSpan(
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.location_on,
                                                        color: Colors.green,
                                                      ),
                                                      addHorizontalSpace(2),
                                                    ],
                                                  ),
                                                  alignment:
                                                      PlaceholderAlignment
                                                          .middle,
                                                ),
                                                TextSpan(
                                                  text:
                                                      "${productData['distance']}",
                                                  style: textTheme.subtitle2!
                                                      .apply(
                                                    fontWeightDelta: 4,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 2,
                                      color: Colors.grey.shade300,
                                    ),
                                  ],
                                ),
                              ),
                              addVerticalSpace(20),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 25,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Overview",
                                      style: textTheme.headline5,
                                    ),
                                    addVerticalSpace(10),
                                    Text(
                                      "${productData['description']}",
                                      style: textTheme.subtitle1!.copyWith(
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: constraints.maxHeight * 0.37,
                            right: 25,
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.red.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Material(
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(70.0),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    debugPrint("$constraints");
                                  },
                                  borderRadius: BorderRadius.circular(70),
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 95,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 5,
                    ),
                    child: ListView(
                      children: <Widget>[
                        Builder(
                          builder: (context) {
                            final GlobalKey<SlideActionState> key = GlobalKey();
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SlideAction(
                                key: key,
                                borderRadius: 20,
                                innerColor: COLOR_GREEN,
                                outerColor: Colors.grey.shade100,
                                elevation: 0,
                                text: "Add to cart",
                                textStyle: textTheme.headline6!.copyWith(
                                  color: COLOR_GREEN,
                                ),
                                sliderButtonIcon: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                ),
                                onSubmit: () {
                                  Future.delayed(
                                    const Duration(seconds: 1),
                                    () => key.currentState?.reset(),
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
