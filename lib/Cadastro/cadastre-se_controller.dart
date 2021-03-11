import 'package:mobx/mobx.dart';
part 'cadastre-se_controller.g.dart';

class Cadastrese_Controller = _Cadastrese_ControllerBase
    with _$Cadastrese_Controller;

abstract class _Cadastrese_ControllerBase with Store {
  @observable
  String name = "";

  @action
  void setname(String value) => name = value;

  @computed
  bool get isPasswordname => name.length >= 5;

  @computed
  bool get isFormValid => isPasswordname;

  @observable
  bool loading = false;
  @action
  Future<void> cada() async {
    await Future.delayed(Duration(milliseconds: 200));
    loading = false;
  }
}
