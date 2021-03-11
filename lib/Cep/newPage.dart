import 'package:flutter/material.dart';
import 'import_cep.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _searchCepController = TextEditingController();
  bool _loading = false;
  bool _enableField = true;
  String _result;
  String _cep;
  String _complemento;
  String _logradouro;
  String _bairro;
  String _uf;
  String _localidade;

  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _searchCepController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultar CEP'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          key: _formkey,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildSearchCepTextField(),
            _buildlougradouro(),
            _buildResultbairro(),
            _buildlocalidade(),
            _builduf(),
            _buildSearchCepButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildResultbairro() {
    return TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(labelText: _bairro),
      enabled: _enableField,
    );
  }

  Widget _buildcomplemento() {
    return TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(labelText: _complemento),
      enabled: _enableField,
    );
  }

  Widget _buildlougradouro() {
    return TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        labelText: _logradouro,
      ),
      enabled: _enableField,
    );
  }

  Widget _builduf() {
    return TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(labelText: _uf),
      enabled: _enableField,
    );
  }

  Widget _buildlocalidade() {
    return TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(labelText: _localidade),
      enabled: _enableField,
    );
  }

  Widget _buildSearchCepTextField() {
    return TextField(
      autofocus: true,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        labelText: 'Cep',
      ),
      controller: _searchCepController,
      enabled: _enableField,
    );
  }

  Widget _buildSearchCepButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: RaisedButton(
        onPressed: _searchCep,
        child: _loading ? _circularLoading() : Text('Consultar'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  void _searching(bool enable) {
    setState(() {
      _result = enable ? '' : _result;
      _result = enable ? '' : _bairro;
      _result = enable ? '' : _localidade;
      _result = enable ? '' : _cep;
      _result = enable ? '' : _complemento;
      _result = enable ? '' : _uf;
      _result = enable ? '' : _logradouro;

      _loading = enable;
      _enableField = !enable;
    });
  }

  Widget _circularLoading() {
    return Container(
      height: 15.0,
      width: 15.0,
      child: CircularProgressIndicator(),
    );
  }

  Future _searchCep() async {
    _searching(true);

    final cep = _searchCepController.text;

    final resultCep = await ViaCepService.fetchCep(cep: cep);

    final ResultCep = await ViaCepService.fetchCep(cep: _uf);
    print(resultCep.localidade); // Exibindo somente a localidade no terminal

    setState(() {
      _result = resultCep.toJson();
      _bairro = resultCep.bairro;
      _cep = resultCep.cep;
      _complemento = resultCep.complemento;
      _localidade = resultCep.localidade;
      _logradouro = resultCep.logradouro;
      _uf = resultCep.uf;
    });

    _searching(false);

    Widget _buildResultForm() {
      return Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Text(_result ?? ''),
      );
    }
  }
}
