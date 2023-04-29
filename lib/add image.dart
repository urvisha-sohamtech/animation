import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:image_picker/image_picker.dart';
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final picker = ImagePicker();
  List imageList = [];
  void selectImage() async{
    final selected = await picker.pickImage(source: ImageSource.gallery);
      setState(() {
        imageList.add(selected);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('image'),
        backgroundColor: Colors.black54,
        centerTitle: true,
      ),
      body:SafeArea(
        child: Column(
          children: [
            OutlinedButton(
              onPressed: (){
                selectImage();
              },
              child: Text('Add image',style: TextStyle(color: Colors.black),),
            ),
           Expanded(
               child:Padding(
                 padding:  EdgeInsets.all(8.0),
                 child: AlignedGridView.count(
                     crossAxisCount:2,
                     itemCount: imageList.length,
                     itemBuilder: (context,index){
                       return Padding(
                         padding: EdgeInsets.all(2.0),
                         child: Image.file(
                             File(imageList[index].path),
                           fit: BoxFit.cover,
                         ),
                       );
                     }
                 ),
               )
           )
          ],
        ),

      ),
    );
  }
}
