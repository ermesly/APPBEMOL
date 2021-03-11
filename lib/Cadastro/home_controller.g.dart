// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool> _$isemailnameComputed;

  @override
  bool get isemailname =>
      (_$isemailnameComputed ??= Computed<bool>(() => super.isemailname,
              name: '_HomeControllerBase.isemailname'))
          .value;
  Computed<bool> _$isemail1nameComputed;

  @override
  bool get isemail1name =>
      (_$isemail1nameComputed ??= Computed<bool>(() => super.isemail1name,
              name: '_HomeControllerBase.isemail1name'))
          .value;
  Computed<bool> _$istele1nameComputed;

  @override
  bool get istele1name =>
      (_$istele1nameComputed ??= Computed<bool>(() => super.istele1name,
              name: '_HomeControllerBase.istele1name'))
          .value;
  Computed<bool> _$istelenameComputed;

  @override
  bool get istelename =>
      (_$istelenameComputed ??= Computed<bool>(() => super.istelename,
              name: '_HomeControllerBase.istelename'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_HomeControllerBase.isFormValid'))
          .value;

  final _$emailAtom = Atom(name: '_HomeControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$email1Atom = Atom(name: '_HomeControllerBase.email1');

  @override
  String get email1 {
    _$email1Atom.reportRead();
    return super.email1;
  }

  @override
  set email1(String value) {
    _$email1Atom.reportWrite(value, super.email1, () {
      super.email1 = value;
    });
  }

  final _$tele1Atom = Atom(name: '_HomeControllerBase.tele1');

  @override
  String get tele1 {
    _$tele1Atom.reportRead();
    return super.tele1;
  }

  @override
  set tele1(String value) {
    _$tele1Atom.reportWrite(value, super.tele1, () {
      super.tele1 = value;
    });
  }

  final _$teleAtom = Atom(name: '_HomeControllerBase.tele');

  @override
  String get tele {
    _$teleAtom.reportRead();
    return super.tele;
  }

  @override
  set tele(String value) {
    _$teleAtom.reportWrite(value, super.tele, () {
      super.tele = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

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

  final _$homevalideAsyncAction = AsyncAction('_HomeControllerBase.homevalide');

  @override
  Future<void> homevalide() {
    return _$homevalideAsyncAction.run(() => super.homevalide());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setemail(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setemail');
    try {
      return super.setemail(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void settele1(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.settele1');
    try {
      return super.settele1(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void settele(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.settele');
    try {
      return super.settele(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setemail1(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setemail1');
    try {
      return super.setemail1(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
email1: ${email1},
tele1: ${tele1},
tele: ${tele},
loading: ${loading},
isemailname: ${isemailname},
isemail1name: ${isemail1name},
istele1name: ${istele1name},
istelename: ${istelename},
isFormValid: ${isFormValid}
    ''';
  }
}
