import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  _HomeControllerBase() {
    autorun((_) {
      print('isFormValid');
    });
  }

  @observable
  String email = "";

  @observable
  String email1 = "";

  @observable
  String tele1 = "";

  @observable
  String tele = "";

  @action
  void setemail(String value) => email = value;

  @action
  void settele1(String value) => tele1 = value;

  @action
  void settele(String value) => tele = value;

  @action
  void setemail1(String value) => email1 = value;

  @computed
  bool get isemailname => RegExp('@').hasMatch(email);

  @computed
  bool get isemail1name => RegExp('@').hasMatch(email1);

  @computed
  bool get istele1name => tele1.length >= 10;

  @computed
  bool get istelename => tele.length >= 10;

  @computed
  bool get isFormValid =>
      isemailname && isemail1name && istele1name && istelename;

  @observable
  bool loading = false;

  @action
  Future<void> homevalide() async {
    await Future.delayed(Duration(milliseconds: 200));
    loading = false;
  }
}
