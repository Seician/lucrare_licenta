import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shopping_app/utils/app_dimensions.dart';

class LocationDialogue extends StatelessWidget {
  final GoogleMapController mapController;
  LocationDialogue({Key? key, required this.mapController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Container(
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius15 / 2),
        ),
        child: SizedBox(
          width: Dimensions.screenSizeWidth,
          child: Container(
            child: Text("Google map search"),
          ),
        ),
      ),
    );
  }
}
