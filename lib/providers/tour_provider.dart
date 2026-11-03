import 'package:flutter/material.dart';
import 'UTS_Fransiska/data/tour_data.dart';
import 'UTS_Fransiska/models/tour_models.dart';

class TourProvider extends ChangeNotifier {
  List<TourModels> get images => TourData.images; 
}