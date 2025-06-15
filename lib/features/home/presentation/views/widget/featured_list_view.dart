import 'package:audioplayers/audioplayers.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_arch_bookly_app/features/home/presentation/views/widget/featured_card.dart';
import 'package:flutter/material.dart';

class FeaturedListView extends StatefulWidget {
  const FeaturedListView({super.key});

  @override
  State<FeaturedListView> createState() => _FeaturedListViewState();
}

class _FeaturedListViewState extends State<FeaturedListView> {
  late final AudioPlayer _player;

  @override
  void initState() {
    _player = AudioPlayer();
    _player.setSource(AssetSource('sounds/ui_click.wav')); // تحميل مسبق

    super.initState();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  void _playSound() async {
    try {
      await _player.stop(); // وقف التشغيل السابق
      await _player.play(AssetSource('sounds/ui_click.wav'));
    } catch (e) {
      debugPrint('Error playing sound: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enlargeCenterPage: true,
        viewportFraction: 0.37,

        enableInfiniteScroll: true,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 3),
        onPageChanged: (index, reason) {
          _playSound();
        },
      ),
      items: List.generate(10, (index) => FeaturedCard()),
    );
  }
}
