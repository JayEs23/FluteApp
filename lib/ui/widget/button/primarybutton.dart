import 'package:flutter/material.dart';
import 'package:fidemlt/ui/theme/colors.dart';
import 'package:fidemlt/ui/theme/apptheme.dart';

class CustomPrimaryButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String? text;
  final double width;
  final Widget? child;
  final Color? color;
  final Color? textcolor;

  final bool shadow;

  const CustomPrimaryButton(
      {Key? key,
      required this.onPressed,
      this.color,
      this.text,
      this.width = 0.0,
      this.shadow = false,
      this.textcolor,
      this.child})
      : super(key: key);

  @override
  State<CustomPrimaryButton> createState() => _CustomPrimaryButtonState();
}

class _CustomPrimaryButtonState extends State<CustomPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width != 0.0 ? widget.width : double.infinity,
      decoration: BoxDecoration(
        boxShadow: widget.shadow
            ? [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.25), // shadow color
                  spreadRadius: 5, // spread radius
                  blurRadius: 45, // blur radius
                  offset: const Offset(0, -15), // changes position of shadow
                ),
              ]
            : null,
        border: Border.all(color: widget.color ?? primaryColor),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        color: widget.color ?? primaryColor,
      ),
      child: MaterialButton(
        onPressed: widget.onPressed,
        child: widget.child ??
            Text(widget.text!,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: widget.textcolor ?? Colors.black)),
      ),
    );
  }
}
