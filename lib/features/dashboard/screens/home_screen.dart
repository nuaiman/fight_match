import 'package:fightmatch/core/constants/icons_custom.dart';
import 'package:fightmatch/core/widgets/text_custom.dart';
import 'package:fightmatch/features/dashboard/widgets/highlights_slide.dart';
import 'package:fightmatch/features/dashboard/widgets/streams_slide.dart';
import 'package:flutter/material.dart';

import '../widgets/events_slide.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconsCustom.search,
                  size: 30,
                )),
            const TextCustom(
              text: 'FightMatch',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconsCustom.notification,
                  size: 30,
                )),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              EventsSlideWidget(),
              StreamsSlideWidget(),
              HighlightsSlideWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
