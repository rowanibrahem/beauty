import 'package:beauty/Core/Utils/assets.dart';

class BoardingModel
{
  final String image;
  final String title;
  BoardingModel(this.image,this.title);
}

List<BoardingModel> boardingItems =
[
  BoardingModel(AssetsData.boarding1, "Mass Your Beauty With Our Best Service"),
  BoardingModel(AssetsData.boarding2, "Feel Comfortable In Flawless Skin"),
  BoardingModel(AssetsData.boarding3, "Protect Your Skin With The Best Products"),
];