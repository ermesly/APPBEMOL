import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Cadastro/Contato.dart';
import 'package:flutter_application_1/Cadastro/cadastre-se_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flux_validator_dart/flux_validator_dart.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final myController = TextEditingController();
TextEditingController nome1 = TextEditingController();
TextEditingController _cpf = TextEditingController();
TextEditingController _data = TextEditingController();
final _formkey = GlobalKey<FormState>();

class _MyHomePageState extends State<MyHomePage> {
  Cadastrese_Controller cadastrese_controller = Cadastrese_Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Container(
            margin: EdgeInsets.only(top: 25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        'Boas-Vindas!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Oi, Tudo bem? Seja Bem-Vindo no app da Bemol! '
                      'Para começamos, preenche os cantos abaixo corretamente e no final dê um clique no Próximo.',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) return 'Campo obrigatório';
                        },
                        controller: nome1,
                        decoration: InputDecoration(
                          labelText: 'Nome Completo ',
                          hintText: 'Digite seu nome completo',
                          enabled: !cadastrese_controller.loading,
                        ),
                        onChanged: cadastrese_controller.setname,
                        keyboardType: TextInputType.name,
                      ),
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) return 'Campo obrigatório';
                        if (validatorDate(value))
                          return 'Por favor insira uma data válido';
                      },
                      controller: _data,
                      decoration: InputDecoration(
                        labelText: 'Data de nascimento',
                        hintText: '00/00/0000',
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        DataInputFormatter(),
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: TextFormField(
                      controller: _cpf,
                      validator: (value) {
                        if (value.isEmpty) return 'Campo obrigatório';

                        if (validatorCpf(value))
                          return 'Por favor insira um cpf válido';
                      },
                      decoration: InputDecoration(
                        labelText: 'CPF',
                        hintText: '000.000.000.00',
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CpfInputFormatter()
                      ],
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Observer(builder: (_) {
                    return Center(
                      child: Container(
                        height: 60,
                        width: 300,
                        child: RaisedButton(
                          color: Colors.blue,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0)),
                          child: Row(
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
                          onPressed: cadastrese_controller.isFormValid
                              ? () {
                                  if (_formkey.currentState.validate()) {
                                    setState(() {
                                      String name;
                                      name = nome1.text.split(' ')[0];
                                      // var arrdata =
                                      //     _data.value.toString().split('/');
                                      // DateTime datadenascimento =
                                      //     DateTime.parse(arrdata[2] +
                                      //         ',' +
                                      //         arrdata[1] +
                                      //         ',' +
                                      //         arrdata[0]);
                                      // DateTime idade =
                                      // DateTime.now().add(duration) - datadenascimento.day;
                                      _cpf.clear();
                                      _data.clear();
                                      nome1.clear();
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => pate2(name)),
                                      );
                                    });
                                  }
                                }
                              : null,
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
