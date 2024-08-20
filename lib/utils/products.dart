class Product {
  List<Product> cartProducts = [];
  final String productName;
  final double productPrice;
  int quantity;
  final String description;
  final String imagePath;

  Product({
    required this.productName,
    required this.productPrice,
    this.quantity = 0,
    required this.imagePath,
    required this.description,
  });

  static void addToCart(Product product, List<Product> cartProducts) {
    var existingProduct = cartProducts.firstWhere(
      (item) => item.productName == product.productName,
      orElse: () {
        var newProduct = Product(
          productName: product.productName,
          productPrice: product.productPrice,
          imagePath: product.imagePath,
          description: product.description,
        );
        cartProducts.add(newProduct);
        return newProduct;
      },
    );
    existingProduct.quantity++;
  }

  void clearCart(List<Product> cartProducts) {
    cartProducts.clear();
  }
}

final List<Product> entrees = [
//Entrees
  Product(
      productName: 'Koshari',
      productPrice: 5.99,
      imagePath: 'lib/Assets/images/koshari.png',
      description:
          'A traditional Egyptian dish made of rice, lentils, and pasta.'),
  Product(
      productName: 'Falafel',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/falafel.png',
      description:
          'Deep-fried balls made from ground chickpeas, fava beans, or both.'),
  Product(
      productName: 'Foul Medames',
      productPrice: 4.99,
      imagePath: 'lib/Assets/images/foul_medames.png',
      description:
          'A stew of cooked fava beans served with olive oil, cumin, and chopped parsley.'),
  Product(
      productName: 'Ta\'ameya,',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/tamiya.png',
      description: 'Egyptian falafel made with fava beans.'),
  Product(
      productName: 'Homous',
      productPrice: 2.99,
      imagePath: 'lib/Assets/images/hummus.png',
      description:
          'A spread made from cooked, mashed chickpeas blended with tahini, lemon juice, and garlic.'),
  Product(
      productName: 'Baba Ghanoush',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/baba_ghanoush.png',
      description:
          'A dish of mashed cooked eggplant mixed with tahini, olive oil, and various seasonings.'),
  Product(
      productName: 'Vine Leaves',
      productPrice: 4.99,
      imagePath: 'lib/Assets/images/stuffed_grape_leaves.png',
      description:
          'Grape leaves stuffed with a mixture of rice, pine nuts, and spices.'),
  Product(
      productName: 'Shorbet Ads',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/lentil_soup.png',
      description: 'A hearty soup made from lentils, vegetables, and spices.'),
];
final List<Product> mains = [
  //Mains
  Product(
      productName: 'Molokhia',
      productPrice: 7.99,
      imagePath: 'lib/Assets/images/molokhia.png',
      description: 'A green soup made from finely chopped jute leaves.'),
  Product(
      productName: 'Mahshi',
      productPrice: 8.99,
      imagePath: 'lib/Assets/images/mahshi.png',
      description:
          'Vegetables stuffed with a mixture of rice, herbs, and sometimes meat.'),
  Product(
      productName: 'Fattah',
      productPrice: 9.99,
      imagePath: 'lib/Assets/images/fattah.png',
      description:
          'A dish made of layers of rice, bread, and meat, topped with a garlic and vinegar sauce.'),
  Product(
      productName: 'Kebabs',
      productPrice: 10.99,
      imagePath: 'lib/Assets/images/kebabs.png',
      description: 'Grilled meat skewers, often served with rice or bread.'),
  Product(
      productName: 'Shawarma',
      productPrice: 6.99,
      imagePath: 'lib/Assets/images/shawarma.png',
      description:
          'Thinly sliced meat stacked and cooked on a vertical rotisserie.'),
  Product(
      productName: 'Hawawshi',
      productPrice: 5.99,
      imagePath: 'lib/Assets/images/hawawshi.png',
      description:
          'Egyptian meat pie made with minced meat, onions, and spices, baked in a pita bread.'),
  Product(
      productName: 'Bamya',
      productPrice: 7.99,
      imagePath: 'lib/Assets/images/bamia.png',
      description: 'A stew made with okra and meat, usually lamb or beef.'),
  Product(
      productName: 'Kofta',
      productPrice: 8.99,
      imagePath: 'lib/Assets/images/kofta.png',
      description:
          'Grilled ground meat, usually beef or lamb, mixed with spices and herbs.'),
];
final List<Product> desserts = [
  Product(
      productName: 'Basbousa',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/basbousa.png',
      description: 'A sweet cake made from semolina, soaked in simple syrup.'),
  Product(
      productName: 'Baklava',
      productPrice: 4.99,
      imagePath: 'lib/Assets/images/baklava.png',
      description:
          'A rich, sweet pastry made of layers of filo filled with chopped nuts and sweetened with syrup or honey.'),
  Product(
      productName: 'Kunafa',
      productPrice: 5.99,
      imagePath: 'lib/Assets/images/kunafa.png',
      description:
          'A dessert made with thin noodle-like pastry, soaked in sweet syrup, and layered with cheese or cream.'),
  Product(
      productName: 'Om Ali',
      productPrice: 4.99,
      imagePath: 'lib/Assets/images/om_ali.png',
      description:
          'A traditional Egyptian dessert made with puff pastry, milk, and nuts.'),
  Product(
      productName: 'Rice Pudding',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/rice_pudding.png',
      description:
          'A creamy dessert made from rice mixed with milk and sugar.'),
  Product(
      productName: 'Qatayef',
      productPrice: 4.99,
      imagePath: 'lib/Assets/images/qatayef.png',
      description:
          'A sweet dumpling filled with cream or nuts, traditionally served during Ramadan.'),
  Product(
      productName: 'Zalabya',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/zalabya.png',
      description: 'Deep-fried dough balls soaked in syrup or honey.'),
  Product(
      productName: 'Ghorayeba',
      productPrice: 2.99,
      imagePath: 'lib/Assets/images/ghorayeba.png',
      description:
          'A type of shortbread cookie made with ghee and often topped with a nut.'),
  //Desserts
];
final List<Product> recommendations = [
  //entrees
  Product(
      productName: 'Koshari',
      productPrice: 5.99,
      imagePath: 'lib/Assets/images/koshari.png',
      description:
          'A traditional Egyptian dish made of rice, lentils, and pasta.'),
  Product(
      productName: 'Falafel',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/falafel.png',
      description:
          'Deep-fried balls made from ground chickpeas, fava beans, or both.'),
  //mains
  Product(
      productName: 'Molokhia',
      productPrice: 7.99,
      imagePath: 'lib/Assets/images/molokhia.png',
      description: 'A green soup made from finely chopped jute leaves.'),
  Product(
      productName: 'Mahshi',
      productPrice: 8.99,
      imagePath: 'lib/Assets/images/mahshi.png',
      description:
      'Vegetables stuffed with a mixture of rice, herbs, and sometimes meat.'),
  //desserts
  Product(
      productName: 'Basbousa',
      productPrice: 3.99,
      imagePath: 'lib/Assets/images/basbousa.png',
      description: 'A sweet cake made from semolina, soaked in simple syrup.'),
  Product(
      productName: 'Baklava',
      productPrice: 4.99,
      imagePath: 'lib/Assets/images/baklava.png',
      description:
          'A rich, sweet pastry made of layers of filo filled with chopped nuts and sweetened with syrup or honey.'),
];
