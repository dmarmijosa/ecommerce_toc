import 'package:ecommerce_toc/src/presentation/widgets/defaultButton.dart';
import 'package:ecommerce_toc/src/presentation/widgets/defaultIconBack.dart';
import 'package:ecommerce_toc/src/presentation/widgets/defaultTextField.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/img/background3.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            color: Color.fromRGBO(0, 0, 0, 0.7),
            colorBlendMode: BlendMode.darken,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 0.3),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: SingleChildScrollView(
              child: Column(children: [
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 100,
                ),
                Text(
                  'Registro',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: DefaultTextField(
                    label: 'Nombre',
                    icon: Icons.person,
                    onChanged: (text) => {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: DefaultTextField(
                    label: 'Apellidos',
                    icon: Icons.person,
                    onChanged: (text) => {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: DefaultTextField(
                    keyboardType: TextInputType.emailAddress,
                    label: 'Email',
                    icon: Icons.email,
                    onChanged: (text) => {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: DefaultTextField(
                    keyboardType: TextInputType.number,
                    label: 'Telefono',
                    icon: Icons.phone,
                    onChanged: (text) => {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: DefaultTextField(
                    label: 'Contraseña',
                    icon: Icons.lock,
                    onChanged: (text) => {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: DefaultTextField(
                    label: 'Confirmar contraseña',
                    icon: Icons.lock_outline,
                    onChanged: (text) => {},
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(left: 25, right: 25, top: 15),
                    child: DefaultButton(text: 'Registrar', onPressed: () {}))
              ]),
            ),
          ),
          DefaultIconBack(left: 45, top: 135)
        ],
      ),
    ));
  }
}
