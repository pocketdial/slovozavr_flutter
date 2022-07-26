import 'package:flutter/material.dart';
import 'package:slovozavr_flutter/feature/domain/models/frame_data.dart';
import 'package:slovozavr_flutter/feature/presentation/widgets/keyboard_widget.dart';
import 'package:slovozavr_flutter/feature/presentation/widgets/row_of_frames_widget.dart';

class BodyWidget extends StatelessWidget {
  FrameData frameData = FrameData();
  final keyIsFirstLoaded = 'is_first_loaded';

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
