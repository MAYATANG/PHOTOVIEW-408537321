import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}
class FirstRoute extends StatelessWidget {
  static const images = <String>[
    'assets/image_1.jpg',
    'assets/image_2.jpg',
    'assets/image_3.jpg',
    'assets/image_4.jpg',
    'assets/image_5.jpg',
    'assets/image_6.jpg',
    'assets/image_7.jpg',
    'assets/image_8.jpg',];
  const FirstRoute({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body:GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>SecondRoute(Images: images),));
              },
            child: const Image(
              image: AssetImage('assets/image_1.jpg'),
            ),
            ),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>SecondRoute(Images: images),));
              },
              child: const Image(
                image: AssetImage('assets/image_2.jpg'),
              ),
            ),
            color: Colors.teal[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>SecondRoute(Images: images),));
              },
              child: const Image(
                image: AssetImage('assets/image_3.jpg'),
              ),
            ),
            color: Colors.teal[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>SecondRoute(Images: images),));
              },
              child: const Image(
                image: AssetImage('assets/image_4.jpg'),
              ),
            ),
            color: Colors.teal[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>SecondRoute(Images: images),));
              },
              child: const Image(
                image: AssetImage('assets/image_5.jpg'),
              ),
            ),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>SecondRoute(Images: images),));
              },
              child: const Image(
                image: AssetImage('assets/image_6.jpg'),
              ),
            ),
            color: Colors.teal[600],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>SecondRoute(Images: images),));
              },
              child: const Image(
                image: AssetImage('assets/image_7.jpg'),
              ),
            ),
            color: Colors.teal[700],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)=>SecondRoute(Images: images),));
              },
              child: const Image(
                image: AssetImage('assets/image_8.jpg'),
              ),
            ),
            color: Colors.teal[800],
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  final List<String> Images;
  SecondRoute({
    required this.Images
});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) =>Scaffold(
    body: PhotoViewGallery.builder(
        itemCount: widget.Images.length,
        builder: (context, index){
          final Image = widget.Images[index];

          return PhotoViewGalleryPageOptions(
              imageProvider: AssetImage(Image),
            minScale: PhotoViewComputedScale.contained * 0.6,
            maxScale: PhotoViewComputedScale.contained * 4,
          );
        },
    ),
  );
}

