import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RowOfFrames extends StatelessWidget {
  FrameData frameData;
  int wordCount;

  RowOfFrames(this.frameData, this.wordCount);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][0]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][0]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][0]
                  .fontColour),
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][1]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][1]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][1]
                  .fontColour),
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][2]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][2]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][2]
                  .fontColour),
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][3]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][3]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][3]
                  .fontColour),
          frameDraw(
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][4]
                  .letter,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][4]
                  .colour,
              Provider.of<FrameData>(context, listen: true)
                  .frames[wordCount][4]
                  .fontColour),
        ],
      ),
    );
  }
}
