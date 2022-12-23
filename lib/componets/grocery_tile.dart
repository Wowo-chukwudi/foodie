import 'package:flutter/material.dart';
import 'package:foodie/models/grocery_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class GroceryTile extends StatelessWidget {
  final GroceryItem item;
  final Function(bool?)? onComplete;
  final TextDecoration textDecoration;
  GroceryTile({Key? key, required this.item, this.onComplete})
      : textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 5,
                color: item.color,
              ),
              const SizedBox(width: 16),
              //TODO:  add row to group (name, date, importance)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.name,
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        decoration: textDecoration),
                  ),
                  const SizedBox(height: 4),
                  buildDate(),
                  const SizedBox(height: 4),
                  buildImportance(),
                ],
              ),
            ],
          ),

          Row(
            children: [
              Text(
                item.quantity.toInt().toString(),
                style: GoogleFonts.lato(
                    fontSize: 20,
                    decoration: textDecoration,
                    fontWeight: FontWeight.bold),
              ),
              buildCheckBox(),
            ],
          )
          //TODO: add row to group (quantity, checkbox)
        ],
      ),
    );
  }

  //TODO: Add BuildImportance()
  Widget buildImportance() {
    if (item.importance == Importance.low) {
      return Text(
        'Low',
        style:
            GoogleFonts.lato(color: Colors.green, decoration: textDecoration),
      );
    } else if (item.importance == Importance.medium) {
      return Text(
        'Medium',
        style: GoogleFonts.lato(
          color: Color.fromARGB(255, 233, 212, 27),
          fontWeight: FontWeight.w900,
          decoration: textDecoration,
        ),
      );
    } else if (item.importance == Importance.high) {
      return Text(
        'High',
        style: GoogleFonts.lato(
          color: Colors.red,
          fontWeight: FontWeight.w900,
          decoration: textDecoration,
        ),
      );
    } else {
      throw Exception('This importance type does not exist');
    }
  }

  //TODO: Add BuildDate()
  Widget buildDate() {
    final dateFormatter = DateFormat('MMMM dd h:mm a');
    final dateString = dateFormatter.format(item.date);
    return Text(
      dateString,
      style: TextStyle(decoration: textDecoration),
    );
  }

  //TODO: Add buildCheckbox()
  Widget buildCheckBox() {
    return Checkbox(value: item.isComplete, onChanged: onComplete);
  }
}
