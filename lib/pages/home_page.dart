// ignore_for_file: must_be_immutable,

import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdow_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.02),
        height: _deviceHeight,
        width: _deviceWidth,
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_pageTitle(), _bookRide()],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: _astroImageWidget(),
          )
        ]),
      )),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/astro_moon.png"))),
    );
  }

  Widget _destinationDropDownWidget() {
    return CustomDropDownButtonclass(
        values: const ["ISRO", "NASA", "ESA"], width: _deviceWidth);
  }

  Widget _bookRide() {
    return SizedBox(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          _destinationDropDownWidget(),
          _travellersInfoWidget(),
          _rideButton()
        ],
      ),
    );
  }

  Widget _travellersInfoWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButtonclass(
            values: const ["1", "2", "3"], width: _deviceWidth * 0.45),
        CustomDropDownButtonclass(
            values: const ["Econamy", "Business", "Private"],
            width: _deviceWidth * 0.45),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      width: _deviceWidth,
      child: MaterialButton(
        child: const Text(
          "Book Ride",
          style: TextStyle(color: Colors.black),
        ),
        onPressed: () {},
      ),
    );
  }
}
