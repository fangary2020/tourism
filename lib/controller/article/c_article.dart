import 'package:tourism/constant/data_news.dart';
import 'package:tourism/model/article/c_article_app.dart';

class ControllerArticle {
  // list for data Article
  List<ModelArticleApp> dataArticle = [
    // index 0
    ModelArticleApp(
      title: DataNews.title1,
      image: DataNews.image1,
      url: DataNews.link1,
     
    ),
    // index 1
    ModelArticleApp(
      title: DataNews.title2,
      image: DataNews.image2,
      url: DataNews.link2,
      
    ),

    // index 2
    ModelArticleApp(
      title: DataNews.title3,
      image: DataNews.image3,
      url: DataNews.link3,
     
    ),
    // index 3
    ModelArticleApp(
      title: DataNews.title4,
      image: DataNews.image4,
      url: DataNews.link4,
      
    ),
    // index 4
    ModelArticleApp(
      title: DataNews.title5,
      image: DataNews.image5,
      url: DataNews.link5,
      
    ),
    // index 5
    ModelArticleApp(
      title: DataNews.title6,
      image: DataNews.image6,
      url: DataNews.link6,
      
    ),
    // index 6
    ModelArticleApp(
      title: DataNews.title7,
      image: DataNews.image7,
      url: DataNews.link7,
     
    ),
     ModelArticleApp(
      title: DataNews.title8,
      image: DataNews.image8,
      url: DataNews.link8,
     
    ),
     ModelArticleApp(
      title: DataNews.title9,
      image: DataNews.image9,
      url: DataNews.link9,
     
    ),
     ModelArticleApp(
      title: DataNews.title10,
      image: DataNews.image10,
      url: DataNews.link10,
     
    ),
  ];

  /// [getLength] return number item in list
  int getLength() => dataArticle.length;

  /// [getArticle] return dataArticle by index
  ModelArticleApp getArticle(int index) => dataArticle.elementAt(index);
}