import 'package:tourism/model/images/c_images.dart';
class ControllerImage {
  // list for data Article
  List<ListImages> allImage = [

  const ListImages(
    identifer: '1',
    id: 'معابد مصر',
    image: 'assets/images/mabed.jpg',
   
  ),
 const ListImages(
    identifer: '2',
    id: 'متاحف مصر',
    image: 'assets/images/matahf.jpg',
  ),
 const ListImages(
    identifer: '3',
    id: 'مناطق اثرية',
    image: 'assets/images/pyr-637x330.jpg',
  ),
  const ListImages(
    identifer: '4',
    id: 'مدن مصر السياحية',
    image: 'assets/images/modn.jpg',
  ),
 const ListImages(
    identifer: '5',
    id: 'آثار اسلامية',
    image: 'assets/images/islamic.jpg',
  ),
 const ListImages(
    identifer: '6',
    id: 'حدائق مصر',
    image: 'assets/images/azahr.jpg',
  ),
 const ListImages(
     identifer: '7',
    id: 'فنادق مصر ',
    image: 'assets/images/hotel.jpg',
  ),
  const ListImages(
    identifer: '8',
    id: 'مطاعم مصر ',
    image: 'assets/images/resturant.jpg',
  ),
 
];
 int getLength() => allImage.length;

  /// [getArticle] return dataArticle by index
  ListImages getImage(int index) => allImage.elementAt(index);
}