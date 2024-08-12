import '99_imports.dart';
import '../utils/products.dart';

class EntreePage extends StatefulWidget {
    const EntreePage({super.key, required this.title});
    final String title;

    @override
    State<EntreePage> createState() => _EntreePageState();
}

class _EntreePageState extends State<EntreePage> {
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
                                    padding: const EdgeInsets.only(top: 40),
                                    child: GridView.builder(
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            mainAxisSpacing: 15,
                                            crossAxisSpacing: 15,
                                        ),
                                        padding: const EdgeInsets.all(30),
                                        itemCount: products.length,
                                        itemBuilder: (context, index) {
                                            final product = products[index];
                                            return Center(
                                                child: SizedBox(
                                                    width: buttonSize,
                                                    height: buttonSize,
                                                    child: Card(
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
// import '99_imports.dart';
// import '../Widgets/01_Entree_Buttons/01_entree.dart';
// import '../Widgets/01_Entree_Buttons/02_entree.dart';
//
// class EntreePage extends StatefulWidget {
//   const EntreePage({super.key, required this.title});
//   final String title;
//
//   @override
//   State<EntreePage> createState() => _EntreePageState();
// }
//
// class _EntreePageState extends State<EntreePage> {
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   void _navigateToTestPage(BuildContext context) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const MainPage(title: 'egg')),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xFFcdf0e4), Color(0xFFE0FBE2)],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//             child: LayoutBuilder(
//               builder: (context, constraints) {
//                 double buttonSize = (constraints.maxWidth / 2) - 20;
//
//                 return Padding(
//                   padding: const EdgeInsets.only(top: 40),
//                   child: GridView.count(
//                     crossAxisCount: 2,
//                     padding: const EdgeInsets.all(30),
//                     mainAxisSpacing: 15,
//                     crossAxisSpacing: 15,
//                     physics: const NeverScrollableScrollPhysics(),
//                     children: [
//                       Center(
//                         child: SizedBox(
//                           width: buttonSize + 50,
//                           height: buttonSize - 20,
//                           child: const Button1_entree(),
//                         ),
//                       ),
//                       Center(
//                         child: SizedBox(
//                           width: buttonSize + 10,
//                           height: buttonSize - 20,
//                           child: const Button2_entree(),
//                         ),
//                       ),
//                       Center(
//                         child: SizedBox(
//                           width: buttonSize + 10,
//                           height: buttonSize - 20,
//                           child: const Button3_entree(),
//                         ),
//                       ),
//                       Center(
//                         child: SizedBox(
//                           width: buttonSize + 10,
//                           height: buttonSize - 20,
//                           child: const Button4_entree(),
//                         ),
//                       ),
//                       Center(
//                         child: SizedBox(
//                           width: buttonSize + 10,
//                           height: buttonSize - 20,
//                           child: const Button5_entree(),
//                         ),
//                       ),
//                       Center(
//                         child: SizedBox(
//                           width: buttonSize + 10,
//                           height: buttonSize - 20,
//                           child: const Button6_entree(),
//                         ),
//                       ),
//                       Center(
//                         child: SizedBox(
//                           width: buttonSize + 10,
//                           height: buttonSize - 20,
//                           child: const Button7_entree(),
//                         ),
//                       ),
//                       Center(
//                         child: SizedBox(
//                           width: buttonSize + 10,
//                           height: buttonSize - 20,
//                           child: const Button8_entree(),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       backgroundColor: const Color(0xFFcdf0e4),
//     );
//   }
// }