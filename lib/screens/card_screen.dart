import 'package:flutter/material.dart';

import 'package:flutter_componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children: const [

          CustomCardType1(),
          CustomCardType2(imageUrl: 'https://storge.pic2.me/upload/930/524aa5770bb87.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2(imageUrl: 'https://wallpaperaccess.com/full/170249.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2(imageUrl: 'https://i.pinimg.com/originals/56/fa/53/56fa53d1c34370af2c14dc1a9dd4b1c7.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2(name: 'Hermosas Cascadas', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb4JZvdwktO7tEafx0nmvV6SK1qrA9zVvkHvwMxkp2Mo1vXTpfa7tM5p3gROPNoo1DGVw&usqp=CAU',),

        ],
      )
    );
  }
}
