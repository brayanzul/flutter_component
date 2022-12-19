import 'package:flutter/material.dart';

import 'package:flutter_componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
          CustomCardType2(imageUrl: 'https://unamglobal.unam.mx/wp-content/uploads/2022/03/universo.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2(imageUrl: 'https://phantom-marca.unidadeditorial.es/d5a7b6bc5cdc807794dc29ad039fe691/resize/1320/f/jpg/assets/multimedia/imagenes/2021/02/01/16122182709340.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2(imageUrl: 'https://www.elespectador.com/resizer/tJiDo3M9L81unUgz5suIy6fYDUk=/1200x675/filters:format(jpeg)/cloudfront-us-east-1.images.arcpublishing.com/elespectador/SGNH6DTY4FGBTLUUCPG7I6MZGA.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2(name: 'Hermosas Cascadas', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTb4JZvdwktO7tEafx0nmvV6SK1qrA9zVvkHvwMxkp2Mo1vXTpfa7tM5p3gROPNoo1DGVw&usqp=CAU',),

        ],
      )
    );
  }
}
