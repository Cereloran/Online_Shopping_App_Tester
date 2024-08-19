import '99_imports.dart';

class DessertPage extends StatefulWidget {
  const DessertPage({super.key, required this.title});
  final String title;

  @override
  State<DessertPage> createState() => _DessertPageState();
}

class _DessertPageState extends State<DessertPage> {
  Set<int> pressedButtons = {};
  List<Product> cartProducts = [];

  void _onButtonPressed(int index) {
    setState(() {
      if (pressedButtons.contains(index)) {
        pressedButtons.remove(index);
      } else {
        pressedButtons.add(index);
        _addToCart(desserts[index]);
      }
    });
  }

  void _addToCart(Product product) {
    setState(() {
      var existingProduct = cartProducts.firstWhere(
            (item) => item.productName == product.productName,
        orElse: () {
          cartProducts.add(product);
          return product;
        },
      );
      existingProduct.quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFcdf0e4), Color(0xFFE0FBE2)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                double buttonSize = (constraints.maxWidth / 2) - 20;

                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                    ),
                    padding: const EdgeInsets.all(30),
                    itemCount: desserts.length,
                    itemBuilder: (context, index) {
                      final product = desserts[index];
                      return Center(
                        child: SizedBox(
                          width: buttonSize,
                          height: buttonSize,
                          child: Card(
                            color: pressedButtons.contains(index)
                                ? Colors.green
                                : Colors.white,
                            child: InkWell(
                              onTap: () => _onButtonPressed(index),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(product.imagePath, height: 80, width: 80),
                                  Text(product.productName),
                                  Text('\$${product.productPrice.toStringAsFixed(2)}'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFcdf0e4),
    );
  }
}