// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastre-se_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Cadastrese_Controller on _Cadastrese_ControllerBase, Store {
  Computed<bool> _$isPasswordnameComputed;

  @override
  bool get isPasswordname =>
      (_$isPasswordnameComputed ??= Computed<bool>(() => super.isPasswordname,
              name: '_Cadastrese_ControllerBase.isPasswordname'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_Cadastrese_ControllerBase.isFormValid'))
          .value;

  final _$nameAtom = Atom(name: '_Cadastrese_ControllerBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$loadingAtom = Atom(name: '_Cadastrese_ControllerBase.loading');

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

  final _$cadaAsyncAction = AsyncAction('_Cadastrese_ControllerBase.cada');

  @override
  Future<void> cada() {
    return _$cadaAsyncAction.run(() => super.cada());
  }

  final _$_Cadastrese_ControllerBaseActionController =
      ActionController(name: '_Cadastrese_ControllerBase');

  @override
  void setname(String value) {
    final _$actionInfo = _$_Cadastrese_ControllerBaseActionController
        .startAction(name: '_Cadastrese_ControllerBase.setname');
    try {
      return super.setname(value);
    } finally {
      _$_Cadastrese_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
loading: ${loading},
isPasswordname: ${isPasswordname},
isFormValid: ${isFormValid}
    ''';
  }
}
