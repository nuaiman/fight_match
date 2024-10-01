import 'package:flutter/material.dart';

import '../../../core/constants/palette.dart';
import '../../../core/widgets/text_custom.dart';

class HighlightsSlideWidget extends StatelessWidget {
  const HighlightsSlideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextCustom(
            text: 'Highlights',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextCustom(
            text: 'view all',
            style: TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.underline,
              decorationColor: Colors.grey,
            ),
          ),
        ],
      ),
      subtitle: AspectRatio(
        aspectRatio: 16 / 9,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 4),
              child: AspectRatio(
                aspectRatio: 9 / 16,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://dmxg5wxfqgb4u.cloudfront.net/styles/background_image_sm/s3/image/2023-04/040323-HERO-israel-adesanya-pre-fight.jpg?h=d1cb525d&itok=UlOE5GLe',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 4, bottom: 4),
                        child: TextCustom(
                          text: 'Khabib Nurmagedov',
                          style: TextStyle(
                            color: Palette.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
