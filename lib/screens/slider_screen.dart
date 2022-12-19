import 'package:flutter/material.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Slider && Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue, 
            onChanged: _sliderEnabled 
            ? ( value ) {
              _sliderValue = value;
              setState(() {});
             }
            : null
          ),

          /* Checkbox(
            value: _sliderEnabled, 
            onChanged: ( value ) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }
          ),
          Switch(
            value: _sliderEnabled, 
            onChanged: ( value ) => setState(() { _sliderEnabled = value; })
          ), */

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: ( value ) => setState(() { _sliderEnabled = value ?? true; })
          ),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: ( value ) => setState(() { _sliderEnabled = value; })
          ),

          const AboutListTile(),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://www.pngplay.com/wp-content/uploads/6/Justice-League-Batman-PNG.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ), 

          const SizedBox( height: 50 )
      
        ],
      )
    );
  }
}