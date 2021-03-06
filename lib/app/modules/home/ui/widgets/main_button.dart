import 'package:flutter/material.dart';

class MainButton extends StatefulWidget {
  final String title;
  final Color backgroundColor;
  final Color? secondBackgroundColor;
  final double? heightFactor;
  final double? widthFactor;
  final double? wrapTextFactor;
  final TextStyle textStyle;
  final Color? textColor;
  final String iconAsset;
  final Color iconColor;
  final Function? onTap;

  const MainButton({
    Key? key,
    required this.title,
    required this.backgroundColor,
    required this.textStyle,
    required this.iconAsset,
    required this.iconColor,
    this.secondBackgroundColor,
    this.textColor,
    this.heightFactor,
    this.widthFactor,
    this.wrapTextFactor,
    this.onTap,
  }) : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    final buttonHeight = height * (widget.heightFactor ?? 0.25);
    final buttonWidth = width * (widget.widthFactor ?? 1);
    final iconHeight = height * 0.2;
    bool selected = false;

    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
        widget.onTap?.call();
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Positioned(
            top: -10,
            left: -10,
            child: Container(
              height: 100,
              width: 100,
              color: widget.secondBackgroundColor,
            ),
          ),
          Positioned(
            child: Container(
              height: buttonHeight,
              width: buttonWidth,
              decoration: BoxDecoration(
                color: widget.backgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: width * 0.05,
                    child: SizedBox(
                      width: width * (widget.wrapTextFactor ?? 1),
                      child: Text(
                        widget.title,
                        style: widget.textStyle.copyWith(
                            color: widget.textColor ??
                                theme.colorScheme.secondaryContainer),
                      ),
                    ),
                  ),
                  Positioned(
                    left: width * 0.6,
                    child: Image.asset(
                      widget.iconAsset,
                      height: iconHeight,
                      color: widget.iconColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
