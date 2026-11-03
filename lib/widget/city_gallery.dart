import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'UTS_Fransiska/providers/tour_provider.dart';

class CityGallery extends StatelessWidget {
  const CityGallery({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Membaca sekaligus mendengarkan status favorit dari FavoriteProvider menggunakan watch
    final image = context.watch<TourProvider>().image;

    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: image.map((item){
            return Padding(
              padding: const EdgeInsets.only(right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  item.image
                  width: 300,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),toList(),
        ),
    );
  }
}