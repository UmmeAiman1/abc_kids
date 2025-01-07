import 'dart:ui';
import 'package:get/get.dart';
import '../models/alphabet_path.dart';

class TracingController extends GetxController {
  static TracingController get to => Get.find();

  final List<AlphabetPath> alphabetPath = [
    AlphabetPath(
      letter: 'A',
      strokes: [
        // Left outer stroke
        Stroke(
          const Offset(50, 180),
          const Offset(85, 72),
        ),
// Left inner stroke
        Stroke(
          const Offset(85, 180),
          const Offset(93, 155),
        ),
// Right outer stroke
        Stroke(
          const Offset(140, 72),
          const Offset(173, 180),
        ),
// Right inner stroke
        Stroke(
          const Offset(135, 180),
          const Offset(128, 150),
        ),
// Upper stroke
        Stroke(
          const Offset(85, 72),
          const Offset(140, 72),
        ),
// Downward stroke
        Stroke(
          const Offset(94, 155),
          const Offset(129, 155),
        ),
// First closing stroke left
        Stroke(
          const Offset(50, 180),
          const Offset(85, 180),
        ),
// Second closing stroke right
        Stroke(
          const Offset(135, 180),
          const Offset(173, 180),
        ),
// Inner triangle straight line
        Stroke(
          const Offset(98, 133),
          const Offset(127, 133),
        ),
// Left triangle line
        Stroke(
          const Offset(98, 133),
          const Offset(109, 92),
        ),
//  right triangle line
        Stroke(
          const Offset(124, 133),
          const Offset(111, 94),
        ),
      ],
    ),
    AlphabetPath(letter: 'B', strokes: [
      Stroke(
        //vartical outer line
        const Offset(85, 65),
        const Offset(85, 180),
      ),
      Stroke(
        //vartical up line
        const Offset(110, 85),
        const Offset(110, 115),
      ),
      Stroke(
        //vartical down line
        const Offset(110, 140),
        const Offset(110, 170),
      ),

      Stroke(
        const Offset(85, 65),
        const Offset(180, 125),
        const Offset(180, 55),
      ),
      // Stroke(
      //   const Offset(50, 20),
      //   const Offset(100, 100),
      //   const Offset(75, 10),
      // ), // Upper curve
      // Stroke(
      //   const Offset(50, 100),
      //   const Offset(100, 180),
      //   const Offset(75, 130),
      // ), // Lower curve
    ]),
    AlphabetPath(
      letter: 'C',
      strokes: [
        Stroke(
          const Offset(150, 20),
          const Offset(50, 100),
          const Offset(100, 10),
        ), // Top curve
        Stroke(
          const Offset(50, 100),
          const Offset(150, 180),
          const Offset(100, 190),
        ),
      ],
    ),
    AlphabetPath(
      letter: 'D',
      strokes: [
        Stroke(
          const Offset(50, 20),
          const Offset(50, 180),
        ), // Vertical line
        Stroke(
          const Offset(50, 20),
          const Offset(150, 100),
          const Offset(100, 10),
        ), // Outer curve
        Stroke(
          const Offset(150, 100),
          const Offset(50, 180),
          const Offset(100, 190),
        ), // Inner curve
      ],
    ),
    AlphabetPath(
      letter: 'E',
      strokes: [
        Stroke(
          //vertical
          const Offset(85, 65),
          const Offset(85, 195),
        ),
        //horizontal
         Stroke(
          const Offset(85, 65),
          const Offset(165, 65),
        ),
        //vertical
        Stroke(
          const Offset(165, 65),
          const Offset(165, 95),
        ),
        //horizontal
         Stroke(
          const Offset(165, 95),
          const Offset(120, 95),
        ),
        //vertical
         Stroke(
          const Offset(120, 95),
          const Offset(120, 120),
        ),
         //horizontal
         Stroke(
          const Offset(120, 120),
          const Offset(165, 120),
        ),
         Stroke(
          const Offset(165, 120),
          const Offset(165, 145),
        ),
         Stroke(
          const Offset(165, 145),
          const Offset(120, 145),
        ),
         Stroke(
          const Offset(120, 145),
          const Offset(120, 170),
        ),
          Stroke(
          const Offset(120, 170),
          const Offset(165, 170),
        ),
         Stroke(
          const Offset(165, 170),
          const Offset( 165, 195),
        ),
         Stroke(
          const Offset(165, 195),
          const Offset(85, 195),
        ),
      ],
    ),
     AlphabetPath(
      letter: 'F',
      strokes: [
        Stroke(
          //1vertical
          const Offset(85, 65),
          const Offset(85, 195),
        ),
        //2horizontal
         Stroke(
          const Offset(85, 65),
          const Offset(165, 65),
        ),
        //3vertical
        Stroke(
          const Offset(165, 65),
          const Offset(165, 95),
        ),
        //4horizontal
         Stroke(
          const Offset(165, 95),
          const Offset(120, 95),
        ),
        //5vertical
         Stroke(
          const Offset(120, 95),
          const Offset(120, 120),
        ),
         //6horizontal
         Stroke(
          const Offset(120, 120),
          const Offset(165, 120),
        ),
        //7vertical
         Stroke(
          const Offset(165, 120),
          const Offset(165, 145),
        ),
           //8horizontal
         Stroke(
          const Offset(165, 145),
          const Offset(120, 145),
        ),
        //9vertical
        Stroke(
          const Offset(120, 145),
          const Offset(120, 195),
        ),
           //10horizontal
          Stroke(
          const Offset(120, 195),
          const Offset(85, 195),
        ),
     
       
      ],
    ),
     AlphabetPath(
      letter: 'I',
      strokes: [
        Stroke(
          const Offset(85, 65),
          const Offset(85, 190),
        ), // horizontal line
        Stroke(
          const Offset(85, 65),
          const Offset(135, 65),
         
        ), 
         Stroke(
          const Offset(135, 65),
          const Offset(135, 190),
        ),
        Stroke(
          const Offset(135, 190),
          const Offset(85, 190),
         
        ), 
      ],
    ),
  ];
  var currentIndex = 0.obs;

  AlphabetPath get currentAlphabet => alphabetPath[currentIndex.value];

  void nextAlphabet() {
    if (currentIndex.value < alphabetPath.length - 1) {
      currentIndex.value++;
    } else {
      currentIndex.value = 0;
    }
  }

  void previousAlphabet() {
    if (currentIndex.value > 0) {
      currentIndex.value--;
    } else {
      currentIndex.value = alphabetPath.length - 1;
    }
  }

  void setAlphabetByLetter(String letter) {
    final index = alphabetPath.indexWhere((path) => path.letter == letter);
    if (index != -1) {
      currentIndex.value = index;
    }
  }
}
