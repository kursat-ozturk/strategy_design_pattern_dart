import 'package:flutter/material.dart';

abstract class Renderer {
  Widget render();
}

class ImageRenderer extends Renderer {
  @override
  Widget render() {
    return Image.asset('assets/images/dart_with_flutter.png');
  }
}

class ButtonRenderer extends Renderer {
  @override
  Widget render() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      onPressed: () {
        debugPrint('Elevated Button Pressed');
      },
      child: const Text('Elevated Button'),
    );
  }
}

class WidgetRenderer extends Renderer {
  @override
  Widget render() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        debugPrint('Tapped the row');
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.local_fire_department,
            color: Colors.amberAccent,
          ),
          Text('Row widget'),
          Icon(Icons.local_fire_department),
        ],
      ),
    );
  }
}
