import '../Models/custom_card.dart';

class ControlWebsitesScreen {
  final List<ListCard> _data = [
    ListCard(
        title: "learn Alphabet Spelling",
        image:
            "https://image.shutterstock.com/image-photo/abc-childrens-alphabet-learning-set-260nw-1540788734.jpg",
        url: "https://www.youtube.com/watch?v=f7gIWLkIotA"),
    ListCard(
        title: "Counting From 1 To 10 With Colors",
        image:
            "https://store-images.s-microsoft.com/image/apps.12984.9007199266667349.4927775b-937b-441e-9c54-91aa40966b2f.283c7e24-2159-4309-9c17-0ab6213c9c4b",
        url: "https://www.youtube.com/watch?v=HZcYqrA1M-E"),
    ListCard(
        title: "ABC Animals",
        image:
            "https://cdn.shopify.com/s/files/1/1598/2739/products/abc-animals_800x.jpg?v=1622565358",
        url: "https://www.youtube.com/watch?v=-3DLhU9jOyE"),
    ListCard(
        title: "Adding Single Digit Numbers for Kids",
        image: "https://i.ytimg.com/vi/bme_4U17U9E/maxresdefault.jpg",
        url: "https://www.youtube.com/watch?v=Geb03EN1s_4"),
    ListCard(
        title: "The Colors of My World Song",
        image: "https://i.ytimg.com/vi/1YMQdX7rq_Y/maxresdefault.jpg",
        url: "https://www.youtube.com/watch?v=1YMQdX7rq_Y"),
    ListCard(
        title: "We Count the Numbers to Ten Song",
        image:
            "https://i.pinimg.com/originals/ef/99/07/ef9907ddc09706bb7f2d93523315c927.jpg",
        url: "https://www.youtube.com/watch?v=5c2QRArAUCw"),
    ListCard(
        title: "Kids storybooks | Activities for preschoolers",
        image:
            "https://roop.org.au/wp-content/uploads/2019/03/poverty_ecuacion2.jpg",
        url:
            "https://roop.org.au/?gclid=Cj0KCQjw_dWGBhDAARIsAMcYuJxMZ4OiBrAQ6iIXNOUvhL7kUn9qyHmdy6dfQ2W2hFx8eePrzv4sj6kaAjjNEALw_wcB"),
    ListCard(
        title: "Free Online Alphabet Games",
        image:
            "https://games4esl.com/wp-content/uploads/Fun-Alphabet-Games-For-Kids.jpg",
        url: "https://www.education.com/games/alphabet/"),
    ListCard(
        title: "Numbers 1-10 | LearnEnglish Kids Online Games",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrt8n3KnsqpL61OHPXr0EsWKn0hy4cc30JCvn2EGDRsiH4nmNl&s",
        url:
            "https://learnenglishkids.britishcouncil.org/word-games/numbers-1-10"),
  ];
  List<ListCard> get dataNews => _data;
  int get dataLength => _data.length;
}
