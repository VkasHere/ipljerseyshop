import 'package:flutter/Material.dart';

class iplteamcircle extends StatelessWidget {
  final String _image;
  int index;
  iplteamcircle(this._image,this.index);
  
  @override
  Widget build(BuildContext context) {
    return Image.network(_image,height: 60,width: 60,);
  }
}