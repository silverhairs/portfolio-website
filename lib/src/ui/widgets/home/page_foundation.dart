import 'package:flutter/material.dart';
import 'package:website/src/palette.dart';
import 'package:website/src/utils.dart';

class PageFoundation extends StatelessWidget {
  const PageFoundation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) - kToolbarHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: AppColors.darkBlue,
          ),
          Expanded(
            child: Container(color: AppColors.nightBlue),
          ),
        ],
      ),
    );
  }
}
