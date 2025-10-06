import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final List<String> listItems;
  final double width;

  const CustomDropdownButton({
    super.key,
    required this.listItems,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      width: width,
      decoration: BoxDecoration(
        color: Color(0xFF7b2cbf),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        items: listItems
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        value: listItems.first,
        underline: Container(),
        menuWidth: width,
        dropdownColor: Color(0xFF7b2cbf),
        style: const TextStyle(color: Colors.white),
        onChanged: (_) {},
      ),
    );
  }
}
