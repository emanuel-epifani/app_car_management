main() {
  DateTime now = DateTime.now();
  DateTime tomorrow = DateTime(2025, 4, 8);
  String tomorrowString = "${tomorrow.day}-${tomorrow.month}-${tomorrow.year}";
  DateTime today = DateTime(now.year, now.month, now.day);
  String todayString = "${today.day}-${today.month}-${today.year}";
  // print(todayString);
  // print(tomorrowString);
  //
  // if (tomorrow.isAfter(today)) {
  //   print('ancora valido');
  // } else {
  //   print('scaduto');
  // }

  int day = tomorrow.difference(now).inDays;
  switch (day) {
    case 0 - 1:
      {
        print('manca un giorno');
      }
      ;
      break;
    case 713:
      {
        print('manca piu di un giorno');
      }
      ;
      break;
    case 1000 - 100000:
      {
        print('manca un giorno');
      }
  }

  int howMuchIsMissing = tomorrow.difference(now).inDays;
  print(howMuchIsMissing);
}
