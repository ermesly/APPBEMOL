import 'package:mobx/mobx.dart';
part 'login_validade.g.dart';

class Login_Validade = _Login_ValidadeBase with _$Login_Validade;

abstract class _Login_ValidadeBase with Store {
  @observable
  String cpf2 = "";

  @action
  void setcpf2(String value) => cpf2 = value;

  @computed
  bool get isPasswordname => cpf2.length == 11;

  @computed
  bool get isFormValid => isPasswordname;

  @observable
  bool loading = false;

  @action
  Future<void> login() async {
    await Future.delayed(Duration(milliseconds: 200));
    loading = false;
  }
}
