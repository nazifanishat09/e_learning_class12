import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    super.key,
    required this.title,
    this.fS,

    this.maxline,
    this.fC,
    this.fW,
  });
  final String title;
  final double? fS;
  final Color? fC;
  final FontWeight? fW;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxline,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(fontSize: fS, color: fC, fontWeight: fW),
    );
  }
}
