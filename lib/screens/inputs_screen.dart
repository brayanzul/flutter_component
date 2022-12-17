import 'package:flutter/material.dart';
import 'package:flutter_componentes/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {

  
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Brayan',
      'last_name' : 'Zuluaga',
      'email'     : 'brayanzuluaga93@hotmail.com',
      'password'  : '1234567890',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
          
                CustomInputField(labelText: 'Nombre', hintText: 'Nombre del Usuario', formProperty: 'first_name', formValues: formValues),
                const SizedBox( height: 30 ),
          
                CustomInputField(labelText: 'Apellido', hintText: 'Apellido del Usuario', formProperty: 'last_name', formValues: formValues),
                const SizedBox( height: 30 ),
          
                CustomInputField(labelText: 'Correo', hintText: 'Correo del Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues),
                const SizedBox( height: 30 ),
          
                CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del Usuario', obscureText: true, formProperty: 'password', formValues: formValues),
                const SizedBox( height: 30 ),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'Users',child: Text('Users')),
                    DropdownMenuItem(value: 'Superuser',child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                  ], 
                  onChanged: ( value ) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guadar'))
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode() );

                    if( !myFormKey.currentState!.validate() ){
                      print("Formulario No Valido");
                      return;
                    }

                    //Todo: imprimir valores del formulario
                    print(formValues);
                  },
                )
          
              ],
            ),
          ),
        ),
      )
    );
  }
}
