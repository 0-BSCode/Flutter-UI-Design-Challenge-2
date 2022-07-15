import 'package:flutter/material.dart';
import 'package:ui_design_2/theme.dart';

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
            return Container(
              // margin: const EdgeInsets.only(top: 50),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      height: constraints.maxHeight * 0.4,
                      color: COLOR_GREEN,
                      child: Stack(
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
                              onPressed: () {},
                              child: Text(
                                "<",
                                style: textTheme.headline6!.copyWith(
                                  color: Colors.orange,
                                ),
                              ),
                              style: ButtonStyle(
                                overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.orange.withOpacity(0.3),
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
            );
          },
        ),
      ),
    );
  }
}
