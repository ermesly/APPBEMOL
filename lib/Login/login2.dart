import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Login/login_validade.dart';
import 'package:flutter_application_1/assets/drawer.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';

import 'menu.dart';

class login2 extends StatefulWidget {
  @override
  _login2State createState() => _login2State();
}

class _login2State extends State<login2> {
  final _formkey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  TextEditingController _password = TextEditingController();
  TextEditingController _cpf = TextEditingController();

  Login_Validade login_validade = Login_Validade();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ENTRAR'),
        centerTitle: true,
      ),
      body: Container(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextFormField(
                  validator: (value) {
                    if (value.isEmpty) return 'Campo obrigatório';

                    if (validatorCpf(value))
                      return 'Por favor insira um cpf válido';
                  },
                  controller: _cpf,
                  decoration: InputDecoration(
                      labelText: 'CPF', hintText: '000.000.000.00'),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CpfInputFormatter()
                  ],
                ),
              ),
              Observer(
                builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      controller: _password,
                      validator: (value) {
                        if (value.isEmpty) return 'Campo obrigatório';
                      },
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        enabled: !login_validade.loading,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        suffixIcon: GestureDetector(
                          child: Icon(
                            _passwordVisible == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.blue,
                          ),
                          onTap: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                      ),
                      obscureText: _passwordVisible == false ? true : false,
                    ),
                  );
                },
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Esqueceu a sua senha'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Observer(builder: (_) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 300,
                          height: 60,
                          child: RaisedButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            color: Colors.blue,
                            onPressed: login_validade.isFormValid
                                ? () {
                                    if (_formkey.currentState.validate()) {
                                      _cpf.clear();
                                      _password.clear();
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Menu()));
                                    }
                                  }
                                : null,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    'Entrar',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10.0),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
