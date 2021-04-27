import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:website/src/palette.dart';

class EmptyListMessageBox extends StatelessWidget {
  final bool isLoading;
  final String? customLottie, customText;
  const EmptyListMessageBox({
    required this.isLoading,
    this.customLottie,
    this.customText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: this.isLoading
            ? [
                Lottie.asset(
                  "assets/lotties/loading.json",
                  height: 75,
                  fit: BoxFit.cover,
                ),
                Text(
                  "Loading",
                  style: TextStyle(
                    color: AppColors.green.withOpacity(1 / 2),
                  ),
                ),
              ]
            : [
                Lottie.asset(
                  "assets/lotties/failed.json",
                  repeat: false,
                  height: 75,
                  width: 75,
                  fit: BoxFit.cover,
                ),
                Text("Failed to connect!"),
              ],
      ),
    );
  }
}
