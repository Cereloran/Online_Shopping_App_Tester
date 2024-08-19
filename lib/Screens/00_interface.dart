import '99_imports.dart';

class InterfacePage extends StatefulWidget {
  const InterfacePage({super.key});

  @override
  _InterfacePageState createState() => _InterfacePageState();
}

class _InterfacePageState extends State<InterfacePage> {
  int _selectedIndex = 1; // Default to Home Page
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: <Widget>[
              const EntreePage(title: 'Entrees'),
              const MainPage(title: 'Home'),
              const DessertPage(title: 'Dessert'),
              const AiPage(title: 'AI'),
              CartPage(
                title: 'Cart',
                products: Provider.of<CartProvider>(context).cartProducts,
                clearCartCallback: () {
                  Provider.of<CartProvider>(context, listen: false).clearCart();
                },
              ),

            ],
          ),
          const Positioned(
            top: 30,
            right: 10,
            child: Column(
              children: [
                Settings_Button(),
                Text(
                  'Accessibility',
                  style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Navigation(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}