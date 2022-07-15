import 'package:flutter/material.dart';
import 'package:ui_design_2/theme.dart';
import 'package:ui_design_2/utils/addSpacing.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: Column(
              children: [
                Expanded(
                  flex: 4,
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
                              decoration: InputDecoration(
                                hintText: 'Search food items',
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white24,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                suffixIcon: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    color: Colors.white24,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: constraints.maxHeight,
                  color: Colors.grey.shade100,
                  height: 400,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
