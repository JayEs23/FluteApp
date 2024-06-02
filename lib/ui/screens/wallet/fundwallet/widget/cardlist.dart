import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:fidemlt/ui/theme/colors.dart';

class CardList extends StatefulWidget {
  int index;
  String cardName;
  int first4digit;
  int last4digit;
  final Function(int) updateClickedCardIndex;
  int clickedIndex;

  CardList(
      {super.key,
      required this.index,
      required this.cardName,
      required this.first4digit,
      required this.last4digit,
      required this.updateClickedCardIndex,
      required this.clickedIndex});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // setState(() {
        //   active = false;
        // });

        setState(() {
          active = !active;
        });

        widget.updateClickedCardIndex(widget.index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.cardName == 'master'
                ? const Color(0XFF232833)
                : widget.cardName == 'visa'
                    ? const Color(0XFF2551BC)
                    : const Color(0XFFF2F2F2),
            border: Border.all(
              color: widget.index == widget.clickedIndex
                  ? secondaryColor
                  : Colors.transparent,
              width: 3,
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.cardName.toUpperCase(),
                  style: TextStyle(
                      color: widget.cardName == 'verve'
                          ? const Color(0XFF232833)
                          : const Color(0XFFF2F2F2),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w500,
                      fontSize: 13)),
              Transform.translate(
                offset: const Offset(12, -4),
                child: widget.index == widget.clickedIndex
                    ? SvgPicture.asset("public/svg/activechecked.svg")
                    : const SizedBox(),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                  "public/svg/${widget.cardName == "master" ? "mastercard.svg" : widget.cardName == "visa" ? "visacard.svg" : "vervecard.svg"}"),
              const SizedBox(width: 5),
              Text(widget.first4digit.toString(),
                  style: TextStyle(
                      color: widget.cardName == 'verve'
                          ? const Color(0XFF232833)
                          : const Color(0XFFF2F2F2),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w400,
                      fontSize: 15)),
              const SizedBox(width: 5),
              Text("****",
                  style: TextStyle(
                      color: widget.cardName == 'verve'
                          ? const Color(0XFF232833)
                          : const Color(0XFFF2F2F2),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w400,
                      fontSize: 15)),
              const SizedBox(
                width: 5,
              ),
              Text("****",
                  style: TextStyle(
                      color: widget.cardName == 'verve'
                          ? const Color(0XFF232833)
                          : const Color(0XFFF2F2F2),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w400,
                      fontSize: 15)),
              const SizedBox(width: 5),
              Text(widget.last4digit.toString(),
                  style: TextStyle(
                      color: widget.cardName == 'verve'
                          ? const Color(0XFF232833)
                          : const Color(0XFFF2F2F2),
                      fontFamily: "Work Sans",
                      fontWeight: FontWeight.w400,
                      fontSize: 15))
            ],
          )
        ]),
      ),
    );
  }
}
