import 'package:flutter_ecommerces/presentation/core/colours.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool? requiredIcon;
  Buttons({
    this.onPressed,
    required this.text,
    this.requiredIcon,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
        fillColor: onPressed != null ? Colours.buttonColor : Colors.grey,
        splashColor: onPressed != null ? Colours.buttonColor.withOpacity(0.4) : Colors.grey.withOpacity(0.4) ,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              requiredIcon == true
                  ? Icon(Icons.login, size: 28, color: Colours.componentColor)
                  : Container(),
              SizedBox(width: 8),
              Text(text.toUpperCase(),
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colours.componentColor,
                      fontSize: 16)),
              const Expanded(
                child: SizedBox(),
              ),
            ],
          ),
        ));
  }
}
