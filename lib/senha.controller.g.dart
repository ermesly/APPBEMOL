// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'senha.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SenhaController on _SenhaControllerBase, Store {
  Computed<bool> _$issenha1Computed;

  @override
  bool get issenha1 =>
      (_$issenha1Computed ??= Computed<bool>(() => super.issenha1,
              name: '_SenhaControllerBase.issenha1'))
          .value;
  Computed<bool> _$issenhaComputed;

  @override
  bool get issenha => (_$issenhaComputed ??= Computed<bool>(() => super.issenha,
          name: '_SenhaControllerBase.issenha'))
      .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_SenhaControllerBase.isFormValid'))
          .value;

  final _$senhaAtom = Atom(name: '_SenhaControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$senha1Atom = Atom(name: '_SenhaControllerBase.senha1');

  @override
  String get senha1 {
    _$senha1Atom.reportRead();
    return super.senha1;
  }

  @override
  set senha1(String value) {
    _$senha1Atom.reportWrite(value, super.senha1, () {
      super.senha1 = value;
    });
  }

  final _$loadingAtom = Atom(name: '_SenhaControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$criarAsyncAction = AsyncAction('_SenhaControllerBase.criar');

  @override
  Future<void> criar() {
    return _$criarAsyncAction.run(() => super.criar());
  }

  final _$_SenhaControllerBaseActionController =
      ActionController(name: '_SenhaControllerBase');

  @override
  void setsenha(String value) {
    final _$actionInfo = _$_SenhaControllerBaseActionController.startAction(
        name: '_SenhaControllerBase.setsenha');
    try {
      return super.setsenha(value);
    } finally {
      _$_SenhaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setsenha1(String value) {
    final _$actionInfo = _$_SenhaControllerBaseActionController.startAction(
        name: '_SenhaControllerBase.setsenha1');
    try {
      return super.setsenha1(value);
    } finally {
      _$_SenhaControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
senha: ${senha},
senha1: ${senha1},
loading: ${loading},
issenha1: ${issenha1},
issenha: ${issenha},
isFormValid: ${isFormValid}
    ''';
  }
}
