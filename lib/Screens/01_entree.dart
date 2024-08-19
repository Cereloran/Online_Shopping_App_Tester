import '99_imports.dart';

class EntreePage extends StatefulWidget {
  const EntreePage({super.key, required this.title});
  final String title;

  @override
  State<EntreePage> createState() => _EntreePageState();
}

class _EntreePageState extends State<EntreePage> {
  Set<int> pressedButtons = {};

  void _onButtonPressed(int index) {
    setState(() {
      if (pressedButtons.contains(index)) {
        pressedButtons.remove(index);
      } else {
        pressedButtons.add(index);
        Provider.of<CartProvider>(context, listen: false).addToCart(entrees[index]);
      }
    });
    print('Pressed Buttons: $pressedButtons');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              widget.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Stack(
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
                        padding: const EdgeInsets.only(top: 0),
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          padding: const EdgeInsets.all(40),
                          itemCount: entrees.length,
                          itemBuilder: (context, index) {
                            final product = entrees[index];
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
          ),
        ],
      ),
      backgroundColor: const Color(0xFFcdf0e4),
      floatingActionButton: Consumer<CartProvider>(
        builder: (context, cart, child) {
          return Stack(
            children: [
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartPage(
                        title: 'Cart',
                        products: cart.cartProducts,
                        clearCartCallback: () {
                          cart.clearCart();
                        },
                      ),
                    ),
                  );
                },
                child: Icon(Icons.shopping_cart),
              ),
              Positioned(
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: Text(
                    '${cart.cartProducts.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}