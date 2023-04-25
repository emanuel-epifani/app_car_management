import 'package:flutter/material.dart';

class CardMaintenanceItem extends StatefulWidget {
  const CardMaintenanceItem({Key? key, required this.titleItem, required this.descriptionItem, required this.timeOfValidity, required this.dateOfExpire}) : super(key: key);
  final String titleItem;
  final String descriptionItem;
  final String timeOfValidity;
  final DateTime dateOfExpire;

  @override
  State<CardMaintenanceItem> createState() => _CardMaintenanceItemState();
}

class _CardMaintenanceItemState extends State<CardMaintenanceItem> {
  DateTime today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  late bool stillValid = widget.dateOfExpire.difference(today).inDays > -1 ? true : false;
  late int howDaysMissing = widget.dateOfExpire.difference(today).inDays;
  Color howMuchIsMissing_color = Colors.white;

  late String todayString = "${widget.dateOfExpire.day}/${widget.dateOfExpire.month}/${widget.dateOfExpire.year}";

  @override
  Widget build(BuildContext context) {
    if (howDaysMissing < 0) {
      howMuchIsMissing_color = Colors.red;
    }
    if ((howDaysMissing > 0) && (howDaysMissing < 30)) {
      howMuchIsMissing_color = Colors.orangeAccent;
    }
    if (howDaysMissing > 30) {
      howMuchIsMissing_color = Colors.green;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 98,
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15)), border: Border.all(color: Colors.grey), boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(4, 8))]),
          child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //text & desciption
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //TITLE
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Icon(
                                Icons.beach_access_outlined,
                                color: Colors.black,
                                size: 22.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            ),
                            Text(widget.titleItem, textAlign: TextAlign.right, style: TextStyle(fontWeight: FontWeight.bold)),
                          ],
                        ),
                        //DESCRIPTION
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(widget.descriptionItem, textAlign: TextAlign.left),
                        ),
                      ],
                    ),
                  ),
                  //durata
                  Flexible(
                      flex: 1,
                      child: Container(
                        //color: Colors.green,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text('Durata', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Text(widget.timeOfValidity, textAlign: TextAlign.center),
                          ],
                        ),
                      )),
                  //stillValid
                  Flexible(
                      flex: 1,
                      child: Container(
                        //color: Colors.yellow,
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 15),
                              child: Text('Valido', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            if (widget.dateOfExpire.isAfter(today) || widget.dateOfExpire.isAtSameMomentAs(today))
                              const Icon(
                                Icons.check_circle_outline_outlined,
                                color: Colors.green,
                                size: 22.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            if (!widget.dateOfExpire.isAfter(today) || widget.dateOfExpire.isAtSameMomentAs(today))
                              const Icon(
                                Icons.timer_off_outlined,
                                color: Colors.red,
                                size: 22.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                          ],
                        ),
                      )),
                  //validUntill
                  Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 18),
                              child: Text('Scadenza:', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            Text(todayString, style: TextStyle(color: howMuchIsMissing_color, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )),
                  //stillValid
                ],
              )

              //validUntill
              ),
        ),
      ),
    );
  }
}
