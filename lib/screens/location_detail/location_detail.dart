import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourismapp/widgets/location_tile.dart';
import 'image_banner.dart';
import 'package:tourismapp/screens/location_detail/text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;
  
  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    final location = Location.fetchbyID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 4.0),
            child: LocationTile(location: location,),
          )
          ]..addAll(textSections(location))),
    ),
    );
  }
  List<Widget> textSections(Location location){
    return location.facts
      .map((fact) => TextSection(fact.title, fact.text))
      .toList();
  }
}