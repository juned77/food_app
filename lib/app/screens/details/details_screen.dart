import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../utils/app_colors.dart';
import '../../widgets/base_scaffold.dart';
import '../../widgets/dish_tile.dart';
import '../../widgets/text_base_widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  Widget chipName(String text) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 68, 79, 0.0737271),
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 9),
      child: TextBaseWidget(
        text: text,
        textSize: 10,
        fontFamily: FontFamily.gilroy,
        fontWeight: FontWeight.w400,
        textColor: const Color.fromRGBO(255, 68, 79, 0.7),
      ),
    );
  }

  Widget getSheet() {
    return DraggableScrollableSheet(
      minChildSize: 0.65,
      maxChildSize: 1,
      initialChildSize: 0.65,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white,
          ),
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                horizontalTitleGap: 0,
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                title: const TextBaseWidget(
                  text: 'Veg only',
                  textSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                trailing: CupertinoSwitch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              const Divider(height: 24),
              const TextBaseWidget(
                text: 'Picked for you',
                textSize: 20,
                fontFamily: FontFamily.gilroy,
              ),
              const Divider(height: 20),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 8,
                  controller: scrollController,
                  itemBuilder: (context, index) => const DishTile(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget getHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.8731, sigmaY: 10.8731),
          child: Container(
            width: double.maxFinite,
            height: 230,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            decoration: BoxDecoration(color: Colors.grey.shade200.withOpacity(0.5)),
            child: Column(
              children: [
                const TextBaseWidget(
                  text: 'Burger Singh Club - Sector 50',
                  textColor: Colors.black,
                  textSize: 24,
                  fontFamily: FontFamily.raleway,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Wrap(
                      spacing: 5,
                      children: [
                        chipName('Burger'),
                        chipName('American'),
                      ],
                    ),
                    const SizedBox(width: 15),
                    const TextBaseWidget(
                      text: '₹₹',
                      textColor: Colors.black,
                      fontFamily: FontFamily.gilroy,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    TextBaseWidget(
                      text: '30-40 min',
                      textSize: 14,
                      fontFamily: FontFamily.gilroy,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.appGrey,
                    ),
                    const SizedBox(width: 15),
                    TextBaseWidget(
                      text: '4.3 ★ (500+)',
                      textSize: 14,
                      fontFamily: FontFamily.gilroy,
                      fontWeight: FontWeight.w400,
                      textColor: AppColors.appGrey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      padding: EdgeInsets.zero,
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          Assets.images.burgerBg.image(
            // height: 250,
            height: MediaQuery.of(context).size.height * 0.40,
            fit: BoxFit.cover,
            width: double.maxFinite,
          ),
          /* Container(
            height: 250,
            color: Colors.grey,
          ), */
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: getHeader(),
          ),
          getSheet(),
        ],
      ),
    );
  }
}
