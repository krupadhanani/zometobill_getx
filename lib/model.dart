import 'package:get/get.dart';

class model extends GetxController
{
  RxBool t = false.obs;
  RxBool t1 = false.obs;
  RxBool t2 = false.obs;
  RxBool t3 = false.obs;


  RxInt total=0.obs;

  void sum(bool t,bool t1,bool t2,bool t3)
  {
    // total.value=int.parse(t)+int.parse(t1)+int.parse(t2)+int.parse(t3);
  }
}