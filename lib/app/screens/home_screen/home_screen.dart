import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../gen/fonts.gen.dart';
import '../../utils/app_colors.dart';
import '../../widgets/base_stateless_widget.dart';
import '../../widgets/text_base_widgets.dart';
import '../details/details_screen.dart';

class HomeScreen extends BaseStatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  DraggableScrollableSheet getDraggableSheet() {
    return DraggableScrollableSheet(
      minChildSize: 0.65,
      maxChildSize: 1,
      initialChildSize: 0.65,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextBaseWidget(
                      text: getString(context).restaurantAvailable,
                      textColor: Colors.black,
                      textSize: 20,
                      fontFamily: FontFamily.gilroy,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: const Text("btn1"),
                    onPressed: () {},
                    backgroundColor: AppColors.appRed,
                    mini: true,
                    child: Assets.images.filterMore.image(),
                  ),
                  FloatingActionButton(
                    heroTag: const Text("btn2"),
                    onPressed: () {},
                    backgroundColor: AppColors.appRed,
                    mini: true,
                    child: Assets.images.funnel.image(),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  shrinkWrap: true,
                  controller: scrollController,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        pushScreen(page: const DetailsScreen());
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Assets.images.landscapeImg.path),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: TextBaseWidget(
                                          text: 'Burger Singh Club - Sector 50',
                                          textColor: Colors.black,
                                          textSize: 16,
                                          fontFamily: FontFamily.gilroy,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Assets.images.heart.image(
                                        height: 18,
                                        width: 18,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                  const TextBaseWidget(
                                    text: '₹₹',
                                    textColor: Colors.black,
                                    fontFamily: FontFamily.gilroy,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  const Divider(height: 24),
                                  IntrinsicHeight(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        getCuisine(),
                                        const SizedBox(
                                          height: 20,
                                          child: VerticalDivider(),
                                        ),
                                        getDeliveryTime(),
                                        const SizedBox(
                                          height: 20,
                                          child: VerticalDivider(),
                                        ),
                                        rating(),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Positioned getHeader(BuildContext context) {
    return Positioned(
      top: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.40,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              Assets.images.shaderPattern.path,
            ),
          ),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(height: 12),
                  TextBaseWidget(
                    text: index == 0 ? 'All' : 'Dish $index',
                    fontFamily: FontFamily.gilroy,
                    textSize: 15,
                    textColor: Colors.white,
                    fontWeight: index == 0 ? FontWeight.w800 : FontWeight.w400,
                  )
                ],
              );
            },
            itemCount: 8,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
          ),
        ),
      ),
    );
  }

  Widget getCuisine() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBaseWidget(
          text: 'Cuisine',
          textSize: 10,
          fontFamily: FontFamily.gilroy,
          fontWeight: FontWeight.w400,
          textColor: AppColors.appGrey,
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 5,
          children: [
            chipName('Burger'),
            chipName('American'),
          ],
        ),
      ],
    );
  }

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

  Widget getDeliveryTime() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBaseWidget(
          text: 'Cuisine',
          textSize: 10,
          fontFamily: FontFamily.gilroy,
          fontWeight: FontWeight.w400,
          textColor: AppColors.appGrey,
        ),
        const SizedBox(height: 8),
        TextBaseWidget(
          text: '30-40 min',
          textSize: 12.5,
          fontFamily: FontFamily.gilroy,
          fontWeight: FontWeight.w400,
          textColor: AppColors.appGrey,
        ),
      ],
    );
  }

  Widget rating() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextBaseWidget(
          text: 'Cuisine',
          textSize: 10,
          fontFamily: FontFamily.gilroy,
          fontWeight: FontWeight.w400,
          textColor: AppColors.appGrey,
        ),
        const SizedBox(height: 8),
        TextBaseWidget(
          text: '4.3 ★ (500+)',
          textSize: 12.5,
          fontFamily: FontFamily.gilroy,
          fontWeight: FontWeight.w400,
          textColor: AppColors.appGrey,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          getHeader(context),
          getDraggableSheet(),
        ],
      ),
    );
  }

  shownewModelsheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return DraggableScrollableSheet(
            initialChildSize: 0.9,
            maxChildSize: 0.9,
            builder: (BuildContext context, ScrollController scrollController) {
              return ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
                child: Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 3,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        const SizedBox(height: 18),
                        const SizedBox(
                          width: 300,
                          child: Text(
                            'Exchange Houses',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const SizedBox(
                          width: 300,
                          child: Text(
                            '(Tap to select)',
                            textAlign: TextAlign.start,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: 50,
                            controller: scrollController,
                            itemBuilder: (context, index) => const TextBaseWidget(text: 'text'),
                            separatorBuilder: (context, index) => const SizedBox(
                              height: 5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }
}
