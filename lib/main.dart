import 'package:flutt_map/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Sreen/add_place.dart';
import 'Sreen/place_detail_screen.dart';
import 'Sreen/places_list_input.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
          title: 'Great Places',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.amber,
          ),
          home: PlacesListScreen(),
          routes: {
            AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
            PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen(),
          }),
    );
  }
}
