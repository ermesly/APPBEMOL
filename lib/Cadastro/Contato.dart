import 'package:flutter/material.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Cadastro/home_controller.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';

import 'criar_senha.dart';

class pate2 extends StatefulWidget {
  String name;

  pate2(
    this.name,
  );

  @override
  _pate2State createState() => _pate2State();
}

class _pate2State extends State<pate2> {
  TextEditingController _celular = TextEditingController();
  TextEditingController _email1 = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _celular1 = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  String nome = 'Contato';

  HomeController homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.navigate_before,
            size: 35,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(nome),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    '${widget.name}, Falta pouco para a conclução do seu cadastro, para isso vamos precisar de mais informações.',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      controller: _email1,
                      validator: (value) {
                        if (value.isEmpty) return 'Campo obrigatório';

                        if (validatorEmail(value))
                          return 'Por favor insira um email válido';
                      },
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        hintText: 'Digita o Seu Email',
                        enabled: !homeController.loading,
                      ),
                      onChanged: homeController.setemail1,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  );
                }),
                Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _email,
                      validator: (value) {
                        if (value.isEmpty) return 'Campo obrigatório';

                        if (validatorEmail(value))
                          return 'Por favor insira um email válido';

                        if (_email.value != _email1.value)
                          return ' O email que você digitou está errado';
                      },
                      decoration: InputDecoration(
                        labelText: 'Confimar E-mail',
                        hintText: 'Digita o Seu Email',
                        enabled: !homeController.loading,
                      ),
                      onChanged: homeController.setemail,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  );
                }),
                Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _celular,
                      validator: (value) {
                        if (value.isEmpty) return 'Campo obrigatório';

                        if (validatorPhone(value))
                          return 'Por favor insira um numero válido';
                      },
                      decoration: InputDecoration(
                        labelText: 'Celular',
                        hintText: 'Digita o seu Número',
                        enabled: !homeController.loading,
                      ),
                      onChanged: homeController.settele,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        TelefoneInputFormatter()
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  );
                }),
                Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: _celular1,
                      validator: (value) {
                        if (value.isEmpty) return 'Campo obrigatório';

                        if (validatorPhone(value))
                          return 'Por favor insira um numero válido';
                        if (_celular.value != _celular1.value)
                          return 'Celulares não conferem';
                      },
                      decoration: InputDecoration(
                        labelText: 'Confirmar o Número',
                        hintText: 'Digita o seu Número',
                        enabled: !homeController.loading,
                      ),
                      onChanged: homeController.settele1,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        TelefoneInputFormatter()
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  );
                }),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: ButtonTheme(
                    height: 60,
                    buttonColor: Colors.blue,
                    child: Observer(
                      builder: (_) {
                        return Container(
                          height: 60,
                          width: 300,
                          child: RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            onPressed: homeController.isFormValid
                                ? () {
                                    setState(() {
                                      _email != _email1;

                                      if (_formkey.currentState.validate()) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    criarsenha()));
                                      }
                                    });
                                  }
                                : null,
                            highlightElevation: 20,
                            child: homeController.loading
                                ? CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white),
                                  )
                                : Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Próximo',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      SizedBox(width: 10.0),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 40.0,
                                      ),
                                    ],
                                  ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
