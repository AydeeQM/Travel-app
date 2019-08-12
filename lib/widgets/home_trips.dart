import 'package:flutter/material.dart';
import 'package:travel/widgets/description_place.dart';
import 'package:travel/widgets/header_appbar.dart';
import 'package:travel/widgets/review_list.dart';

class HomeTrips extends StatelessWidget {

  String descriptionDummy = 'Lorem ipsum dolor sit amet consectetur, adipiscing elit dictum arcu himenaeos risus, potenti suspendisse justo convallis. \n\nUllamcorper purus enim viverra et hac nibh sem, nisi libero tempus habitasse ligula feugiat interdum tristique, auctor odio vel ut ultricies tempor. Malesuada pretium torquent pellentesque tortor sapien laoreet, quisque nisl penatibus fermentum netus, bibendum quis neque himenaeos justo.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace('Bahamas', 4, descriptionDummy),
                ReviewList()
              ],
            ),
            HeaderAppbar()
          ],
        );
  }

}
