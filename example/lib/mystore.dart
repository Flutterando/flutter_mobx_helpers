import 'package:mobx/mobx.dart';
part 'mystore.g.dart';

class MyStore = _MyStoreBase with _$MyStore;

abstract class _MyStoreBase with Store {
  @observable
  int value = 0;
  @action
  setValue() => value++;
}
