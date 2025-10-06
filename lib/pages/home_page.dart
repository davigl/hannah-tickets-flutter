import 'package:flutter/material.dart';

import '../widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: _deviceHeight,
          width: _deviceWidth,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_pageTitle(), _bookTicketWrapper()],
              ),
              Align(
                alignment: Alignment(0, 0.23),
                child: _hannahMontanaImage(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#HannahMontana",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.w800,
        fontFamily: "Roboto",
      ),
      textAlign: TextAlign.left,
    );
  }

  Widget _hannahMontanaImage() {
    return Container(
      height: _deviceHeight * 0.5,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/hannah-montana.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _bookTicketWrapper() {
    return Flex(
      direction: Axis.vertical,
      spacing: 16,
      children: [_tourDropdown(), _seatDropdown(), _bookTicketButton()],
    );
  }

  Widget _bookTicketButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () => {},
        child: const Text("Book Ticket", style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget _tourDropdown() {
    List<String> tours = ["Tour A", "Tour B", "Tour C"];

    return CustomDropdownButton(listItems: tours, width: _deviceWidth);
  }

  Widget _seatDropdown() {
    List<String> positions = ["Front Row", "Middle", "Back"];
    List<String> seats = ["A1", "A2", "A3", "A4", "A5"];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10,
      children: [
        CustomDropdownButton(listItems: positions, width: _deviceWidth * 0.45),
        CustomDropdownButton(listItems: seats, width: _deviceWidth * 0.4),
      ],
    );
  }
}
