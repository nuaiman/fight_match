import 'package:flutter/material.dart';

import '../../../core/constants/icons_custom.dart';
import '../../../core/constants/palette.dart';
import '../../../core/widgets/text_custom.dart';

class EventsSlideWidget extends StatelessWidget {
  const EventsSlideWidget({
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
            text: 'Events',
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
        aspectRatio: 16 / 11,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return AspectRatio(
              aspectRatio: 10 / 9,
              child: Card(
                elevation: 0,
                color: Palette.inactive,
                surfaceTintColor: Palette.inactive,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://i.pinimg.com/originals/df/4d/f1/df4df193cfd23e2304a81f1bfc8efdfa.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextCustom(
                            text: 'Gornali Vs Surti',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(IconsCustom.calendar),
                              SizedBox(width: 8),
                              TextCustom(
                                text: '10 pm, 6 May, 2024',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.location_on_rounded),
                              SizedBox(width: 8),
                              TextCustom(
                                text: 'AT&T Stadium',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
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
    );
  }
}
