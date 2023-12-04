import 'package:flutter/material.dart';

class DraggableCircles extends StatefulWidget {
  const DraggableCircles({super.key});

  @override
  DraggableCirclesState createState() => DraggableCirclesState();
}

class DraggableCirclesState extends State<DraggableCircles> {
  double leftCirclePosition = 0.0;
  double rightCirclePosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 24.0,
      child: GestureDetector(
        onHorizontalDragUpdate: (details) {
          setState(() {
            // Update circle positions based on drag gesture
            leftCirclePosition += details.primaryDelta!;
            rightCirclePosition -= details.primaryDelta!;

            // Ensure circle positions stay within the progress bar bounds
            leftCirclePosition = leftCirclePosition.clamp(0.0, 200.0 - 12.0);
            rightCirclePosition = rightCirclePosition.clamp(0.0, 200.0 - 12.0);
          });
        },
        child: Stack(
          children: [
            LinearProgressIndicator(
              value: (leftCirclePosition + 12) / 200.0,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            Positioned(
              left: leftCirclePosition,
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              right: rightCirclePosition,
              child: Container(
                width: 12,
                height: 12,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
