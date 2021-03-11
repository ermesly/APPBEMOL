// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_validade.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Login_Validade on _Login_ValidadeBase, Store {
  Computed<bool> _$isPasswordnameComputed;

  @override
  bool get isPasswordname =>
      (_$isPasswordnameComputed ??= Computed<bool>(() => super.isPasswordname,
              name: '_Login_ValidadeBase.isPasswordname'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_Login_ValidadeBase.isFormValid'))
          .value;

  final _$cpf2Atom = Atom(name: '_Login_ValidadeBase.cpf2');

  @override
  String get cpf2 {
    _$cpf2Atom.reportRead();
    return super.cpf2;
  }

  @override
  set cpf2(String value) {
    _$cpf2Atom.reportWrite(value, super.cpf2, () {
      super.cpf2 = value;
    });
  }

  final _$loadingAtom = Atom(name: '_Login_ValidadeBase.loading');

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

  final _$loginAsyncAction = AsyncAction('_Login_ValidadeBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$_Login_ValidadeBaseActionController =
      ActionController(name: '_Login_ValidadeBase');

  @override
  void setcpf2(String value) {
    final _$actionInfo = _$_Login_ValidadeBaseActionController.startAction(
        name: '_Login_ValidadeBase.setcpf2');
    try {
      return super.setcpf2(value);
    } finally {
      _$_Login_ValidadeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cpf2: ${cpf2},
loading: ${loading},
isPasswordname: ${isPasswordname},
isFormValid: ${isFormValid}
    ''';
  }
}
