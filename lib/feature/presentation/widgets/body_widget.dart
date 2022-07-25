import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RowOfFrames(frameData, 0),
                RowOfFrames(frameData, 1),
                RowOfFrames(frameData, 2),
                RowOfFrames(frameData, 3),
                RowOfFrames(frameData, 4),
                RowOfFrames(frameData, 5),
              ],
            ),
          ),
          Expanded(flex: 1, child: Keyboard()),
        ],
      ),
    );
  }
}
