import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Login/menu.dart';
import 'package:flutter_application_1/senha.controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class criarsenha extends StatefulWidget {
  @override
  _criarsenhaState createState() => _criarsenhaState();
}

class _criarsenhaState extends State<criarsenha> {
  final _formkey = GlobalKey<FormState>();
  bool _showPassword = false;

  SenhaController senhaController = SenhaController();

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
        title: Text('Criar Senha'),
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
                    'Próximo passo agora é criar uma senha, para poder fazer login.',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      maxLength: 6,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        enabled: !senhaController.loading,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _showPassword == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.blue,
                          ),
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(6),
                      ],
                      onChanged: senhaController.setsenha,
                      obscureText: _showPassword == false ? true : false,
                    ),
                  );
                }),
                Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      maxLength: 6,
                      decoration: InputDecoration(
                        labelText: 'Confirmar Senha',
                        enabled: !senhaController.loading,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _showPassword == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.blue,
                          ),
                          onTap: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                        ),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(6),
                      ],
                      onChanged: senhaController.setsenha1,
                      obscureText: _showPassword == false ? true : false,
                    ),
                  );
                }),
                SizedBox(
                  height: 50,
                ),
                Observer(builder: (_) {
                  return Center(
                    child: ButtonTheme(
                      height: 60,
                      buttonColor: Colors.blue,
                      child: Container(
                        height: 60,
                        width: 300,
                        child: RaisedButton(
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          onPressed: senhaController.isFormValid
                              ? () {
                                  if (_formkey.currentState.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Menu()));
                                  }
                                }
                              : null,
                          highlightElevation: 20,
                          child: senhaController.loading
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
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
