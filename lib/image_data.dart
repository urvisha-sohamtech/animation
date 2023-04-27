import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}
List<String> image = [
  'https://pin.it/49S6ISs',
  'https://pin.it/2z8PG9O',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar:AppBar(title: Text('image'),
        backgroundColor: Colors.white24,
        centerTitle: true,
      ),
      body: MasonryGridView.count(
          crossAxisCount: 2,
          itemCount: image.length,
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: image[index],fit: BoxFit.cover,),
              ),
            );
          },
      )
    );
  }
}
