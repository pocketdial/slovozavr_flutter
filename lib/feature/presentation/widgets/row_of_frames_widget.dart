import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slovozavr_flutter/common/app_colors.dart';
import 'package:slovozavr_flutter/feature/domain/models/frame_data.dart';

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

Widget frameDraw(String letter, Color colour, Color fontColour) {
  return AspectRatio(
    aspectRatio: 1,
    child: Container(
      //width: 70.0,
      //height: 70.0,
      margin: const EdgeInsets.all(3.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: colour,
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Center(
        child: Text(
          letter,
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontSize: 40,
            color: colour == AppColors.frameColorNew
                ? Colors.black
                : Colors.white, //fontColour,
            fontWeight: FontWeight.bold,
            //height: 1,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
