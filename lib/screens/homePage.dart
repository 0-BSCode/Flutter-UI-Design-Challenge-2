import 'package:flutter/material.dart';
import 'package:ui_design_2/categories.dart';
import 'package:ui_design_2/components/productItem.dart';
import 'package:ui_design_2/productData.dart';
import 'package:ui_design_2/theme.dart';
import 'package:ui_design_2/utils/addSpacing.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: constraints.maxHeight * 0.40,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Container(
                            color: COLOR_GREEN,
                          ),
                          Image.asset("assets/images/tree_v.png"),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 70,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Image.asset(
                                              "assets/images/avatar.png")),
                                    ),
                                    addHorizontalSpace(20),
                                    Expanded(
                                      child: Text(
                                        "How hungry are you today?",
                                        style: textTheme.headline5!.apply(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                TextField(
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  cursorColor: Colors.white,
                                  decoration: InputDecoration(
                                    hintText: 'Search food items',
                                    hintStyle: const TextStyle(
                                      color: Colors.white,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Colors.white24,
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    suffixIcon: Container(
                                      width: 70,
                                      height: 70,
                                      decoration: const BoxDecoration(
                                        color: Colors.white24,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: IconButton(
                                        onPressed: () {
                                          debugPrint("${constraints.maxWidth}");
                                        },
                                        icon: const Icon(
                                          Icons.menu,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                addVerticalSpace(10),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: constraints.maxWidth,
                      color: Colors.grey.shade100,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          bottom: 10,
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Column(
                              children: [
                                // Margin before popular foods scrolling list
                                addVerticalSpace(constraints.maxWidth * 0.35),
                                Row(
                                  children: [
                                    Text(
                                      'Popular Foods',
                                      style: textTheme.headline5,
                                    ),
                                    const Expanded(child: Center()),
                                    Text(
                                      'View All >',
                                      style: textTheme.subtitle2!.apply(
                                        color: COLOR_ORANGE,
                                      ),
                                    ),
                                    addHorizontalSpace(10),
                                  ],
                                ),
                                addVerticalSpace(10),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  child: Row(
                                    children: PRODUCT_DATA
                                        .map(
                                          (product) => InkWell(
                                            onTap: () {
                                              // Navigate to product page
                                              debugPrint("HELLO");
                                            },
                                            child: ProductItem(
                                              productData: product,
                                              width:
                                                  constraints.maxWidth * 0.50,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: -constraints.maxWidth * 0.15,
                              left: 0,
                              child: SizedBox(
                                width: constraints.maxWidth,
                                height: constraints.maxWidth * 0.35,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  physics: const BouncingScrollPhysics(),
                                  children: CATEGORIES
                                      .map(
                                        (category) => Container(
                                          margin: const EdgeInsets.only(
                                            right: 10,
                                          ),
                                          width: constraints.maxWidth * 0.25,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                    'assets/images/${category['image']}'),
                                                addVerticalSpace(10),
                                                Text(
                                                  '${category['name']}',
                                                  style: textTheme.bodyText2!
                                                      .apply(
                                                    color: COLOR_BLACK,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
