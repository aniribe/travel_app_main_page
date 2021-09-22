List<Item> imageList = [
  Item(image: 'assets/images/canada.jpg', title: 'Canada'),
  Item(image: 'assets/images/Italy.jpg', title: 'Italy'),
  Item(image: 'assets/images/greece.jpg', title: 'Greece'),
  Item(image: 'assets/images/united-states.jpg', title: 'United States'),
];

class Item {
  final String image;
  final String title;

  Item({required this.image, required this.title});
}
