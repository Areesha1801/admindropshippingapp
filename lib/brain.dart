String uName;
String uNumber;
double Billl;
String namee;
String addresss;
String paymenttMethod;
var cartData = List();
class functionality {

  void getInfo(String name, String number){
    uName = name;
    uNumber = number;
  }

  String userName(){
    return uName;
  }
  String userNumber(){
    return uNumber;
  }

  void cartItem( List x){
    for (int i=0; i<=x.length-1; ) {
        cartData.add(x[i]);
      i++;
    }
  }
  List showItems(){
    return cartData;
  }
  void getBill(double bill){
    Billl = bill;
  }
  double bill(){
    return Billl;
  }
  void getDeliveryPlaceInfo(String name, String Address){
    namee = name;
    addresss = Address;
  }
  void paymentMethod(String m){
    paymenttMethod = m;
  }
  String showLocation(){
    return addresss;
  }
}