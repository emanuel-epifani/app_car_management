import 'dart:html';

class Assicurazione {
  late String name;
  late int chilometraggio; //(in km)
  late DateTime datePayment;
  late DateTime dateNextPayment; //qll messa dall'utente, else +12mesi o quant'e la durata di default di qst item
  late double cost;
  late String comment;
  late File attachedBill; //fattura
}
