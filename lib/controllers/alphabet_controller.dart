import 'package:get/get.dart';

import '../constants/app_images.dart';
import '../models/alphabet_model.dart';

class AlphabetController extends GetxController {
  final RxList<AlphabetModel> alphabetList = [
    AlphabetModel(
        alphabet: 'A', imageName: 'Apple', image: Assets.imagesApples),
    AlphabetModel(alphabet: 'B', imageName: 'Ball', image: Assets.imagesBall),
    AlphabetModel(alphabet: 'C', imageName: 'Cat', image: Assets.imagesCat),
    AlphabetModel(alphabet: 'D', imageName: 'Dog', image: Assets.imagesDog),
    AlphabetModel(
        alphabet: 'E', imageName: 'Elephant', image: Assets.imagesElephant),
    AlphabetModel(alphabet: 'F', imageName: 'Fish', image: Assets.imagesFish),
    AlphabetModel(
        alphabet: 'G', imageName: 'Giraffe', image: Assets.imagesGiraffe),
    AlphabetModel(alphabet: 'H', imageName: 'Horse', image: Assets.imagesHorse),
    AlphabetModel(alphabet: 'I', imageName: 'Indri', image: Assets.imagesIndri),
    AlphabetModel(
        alphabet: 'J', imageName: 'Jagguar', image: Assets.imagesJagguar),
    AlphabetModel(
        alphabet: 'K', imageName: 'Knagroo', image: Assets.imagesKnagroo),
    AlphabetModel(
        alphabet: 'L', imageName: 'Lepoard', image: Assets.imagesLepoard),
    AlphabetModel(
        alphabet: 'M', imageName: 'Monkey', image: Assets.imagesMonkey),
    AlphabetModel(alphabet: 'N', imageName: 'Neola', image: Assets.imagesNeola),
    AlphabetModel(
        alphabet: 'O', imageName: 'Octopus', image: Assets.imagesOctupus),
    AlphabetModel(
        alphabet: 'P', imageName: 'Parrot', image: Assets.imagesParrots),
    AlphabetModel(alphabet: 'Q', imageName: 'Quail', image: Assets.imagesQuail),
    AlphabetModel(alphabet: 'R', imageName: 'Rat', image: Assets.imagesRat),
    AlphabetModel(alphabet: 'S', imageName: 'Snake', image: Assets.imagesSnake),
    AlphabetModel(alphabet: 'T', imageName: 'Tiger', image: Assets.imagesTiger),
    AlphabetModel(
        alphabet: 'U', imageName: 'Umbrella', image: Assets.imagesUmberella),
    AlphabetModel(
        alphabet: 'V', imageName: 'Violin', image: Assets.imagesViolin),
    AlphabetModel(alphabet: 'W', imageName: 'Whale', image: Assets.imagesWhale),
    AlphabetModel(
        alphabet: 'X', imageName: 'Xylophone', image: Assets.imagesXylophone),
    AlphabetModel(alphabet: 'Y', imageName: 'Yatch', image: Assets.imagesYatch),
    AlphabetModel(alphabet: 'Z', imageName: 'Zebra', image: Assets.imagesZebra),
  ].obs;
}
