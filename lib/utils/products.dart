class Product {
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
}
final List<Product> products = [
  Product(
      productName: 'USB C Cable',
      productPrice: 9.99,
      imagePath: 'assets/images/product1.png',
      description: 'This is a USB C cable.'
  ),
  Product(
      productName: 'USB Micro Cable',
      productPrice: 19.99,
      imagePath: 'assets/images/product2.png',
      description: 'This is a USB Micro cable.'
  ),
  Product(
      productName: 'USB Mini Cable',
      productPrice: 29.99,
      imagePath: 'assets/images/product3.png',
      description: 'This is a USB Mini cable.'
  ),
  Product(
      productName: 'Lightning Cable',
      productPrice: 14.99,
      imagePath: 'assets/images/product4.png',
      description: 'This is a Lightning Charging cable.'
  ),
  Product(
      productName: 'AUX Cable',
      productPrice: 14.99,
      imagePath: 'assets/images/product5.png',
      description: 'This is an AUX cable.'
  ),
  Product(
      productName: 'HDMI Cable',
      productPrice: 39.99,
      imagePath: 'assets/images/product6.png',
      description: 'This is a HDMI cable.'
  ),
  Product(
      productName: 'Display Port Cable',
      productPrice: 39.99,
      imagePath: 'assets/images/product7.png',
      description: 'This is a Display Port cable.'
  ),
  Product(
      productName: 'HDMI Cable',
      productPrice: 42.99,
      imagePath: 'assets/images/product8.png',
      description: 'This is a HDMI cable.'
  ),
  Product(
      productName: 'USB-C to HDMI Cable',
      productPrice: 27.99,
      imagePath: 'assets/images/product9.png',
      description: 'This is a HDMI cable.'
  ),
  Product(
      productName: 'i9 Motherboard Cable',
      productPrice: 1349.99,
      imagePath: 'assets/images/product10.png',
      description: 'Motherboard Micro-Atx DDR4 8GB RAM Intel Core i9 12 13 Gen Gaming Pcie 4.0 PC.'
  ),
  Product(
      productName: 'i9 Cpu',
      productPrice: 1639.99,
      imagePath: 'assets/images/product11.png',
      description: 'Core I9-10900K New I9 10900K 3.7 GHz Ten-Core Twenty-Thread CPU Processor L3=20M 125W LGA 1200.'
  ),
  Product(
      productName: 'Windows Clippy',
      productPrice: 1.99,
      imagePath: 'assets/images/clippy.png',
      description: 'Microsofts beloved clippy.'
  ),

];