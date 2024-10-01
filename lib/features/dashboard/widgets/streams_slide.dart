import 'package:fightmatch/core/widgets/rounded_elevated_buton.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/icons_custom.dart';
import '../../../core/constants/palette.dart';
import '../../../core/widgets/text_custom.dart';

class StreamsSlideWidget extends StatelessWidget {
  const StreamsSlideWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const TextCustom(
        text: 'Live Stream',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      subtitle: AspectRatio(
        aspectRatio: 16 / 9,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.only(right: 4),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'https://wallpapercave.com/wp/wp4871630.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  // ----------------
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Palette.white),
                          ),
                          child: const TextCustom(
                            text: ' • Live  ',
                            style: TextStyle(color: Palette.white),
                          ),
                        ),
                        const SizedBox(),
                        const SizedBox(),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextCustom(
                              text: 'Gornali Vs Surti',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Palette.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  IconsCustom.calendar,
                                  color: Palette.white,
                                ),
                                SizedBox(width: 4),
                                TextCustom(
                                  text: '10 pm, 6 May, 2024',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Palette.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  color: Palette.white,
                                ),
                                SizedBox(width: 4),
                                TextCustom(
                                  text: 'AT&T Stadium',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Palette.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 35,
                          child: RoundedElevatedButton(
                            needInvertedColors: true,
                            height: 35,
                            text: 'Purchase at \$25',
                            onTap: () {},
                          ),
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
