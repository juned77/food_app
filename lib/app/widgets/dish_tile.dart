import 'package:flutter/material.dart';

import 'text_base_widgets.dart';

class DishTile extends StatelessWidget {
  const DishTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TextBaseWidget(
                  text: 'Dish name',
                  textSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                SizedBox(height: 14),
                TextBaseWidget(
                  text: '₹50',
                  textSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
          Container(
            height: 90,
            width: 90,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
