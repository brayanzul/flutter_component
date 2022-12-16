import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5 ),
            child: CircleAvatar(
              child: const Text('SL'),
              backgroundColor: Colors.indigo[900]
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://p4.wallpaperbetter.com/wallpaper/849/1015/727/batman-batman-logo-video-games-batman-arkham-origins-wallpaper-preview.jpg'),
         ),
      ),
    );
  }
}