import 'package:mobx/mobx.dart';
part 'senha.controller.g.dart';

class SenhaController = _SenhaControllerBase with _$SenhaController;

abstract class _SenhaControllerBase with Store {
  @observable
  String senha = "";

  @observable
  String senha1 = "";

  @action
  void setsenha(String value) => senha = value;

  @action
  void setsenha1(String value) => senha1 = value;

  @computed
  bool get issenha1 => senha.length == 6;

  @computed
  bool get issenha => senha1.length == 6;

  @computed
  bool get isFormValid => issenha1 && issenha;

  @observable
  bool loading = false;

  @action
  Future<void> criar() async {
    await Future.delayed(Duration(milliseconds: 200));
    loading = false;
  }
}
