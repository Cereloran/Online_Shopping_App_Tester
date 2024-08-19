import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';
import '../utils/products.dart';
import '../utils/success.dart';

class CartPage extends StatefulWidget {
  final String title;
  final List<Product> products;
  final VoidCallback clearCartCallback;

  CartPage({
    required this.title,
    required this.products,
    required this.clearCartCallback,
  });

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final _formKey = GlobalKey<FormState>();
  String phoneNumber = '123-456-7890';
  String cardNumber = '4111 1111 1111 1111';
  String expiry = '12/24';
  String cvv = '123';

  late TextEditingController _phoneController;
  late TextEditingController _cardController;
  late TextEditingController _expiryController;
  late TextEditingController _cvvController;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController(text: phoneNumber);
    _cardController = TextEditingController(text: cardNumber);
    _expiryController = TextEditingController(text: expiry);
    _cvvController = TextEditingController(text: cvv);
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _cardController.dispose();
    _expiryController.dispose();
    _cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double totalAmount = widget.products.fold(0, (sum, item) => sum + (item.productPrice * item.quantity));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: widget.products.length,
                  itemBuilder: (context, index) {
                    final product = widget.products[index];
                    return ListTile(
                      leading: Image.asset(product.imagePath, height: 50, width: 50),
                      title: Text(product.productName),
                      subtitle: Text('Quantity: ${product.quantity}'),
                      trailing: Text('\$${(product.productPrice * product.quantity).toStringAsFixed(2)}'),
                    );
                  },
                ),
              ),
              Text('Total: \$${totalAmount.toStringAsFixed(2)}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextFormField(
                controller: _phoneController,
                decoration: InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  phoneNumber = value!;
                },
              ),
              TextFormField(
                controller: _cardController,
                decoration: InputDecoration(labelText: 'Card Number'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your card number';
                  }
                  return null;
                },
                onSaved: (value) {
                  cardNumber = value!;
                },
              ),
              TextFormField(
                controller: _expiryController,
                decoration: InputDecoration(labelText: 'Expiry Date'),
                keyboardType: TextInputType.datetime,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the expiry date';
                  }
                  return null;
                },
                onSaved: (value) {
                  expiry = value!;
                },
              ),
              TextFormField(
                controller: _cvvController,
                decoration: InputDecoration(labelText: 'CVV'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the CVV';
                  }
                  return null;
                },
                onSaved: (value) {
                  cvv = value!;
                },
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Process payment and navigate to success page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderSuccessPage(
                            orderNumber: '1234567',
                            products: widget.products,
                            totalAmount: totalAmount,
                            phoneNumber: phoneNumber,
                            cardNumber: cardNumber,
                            expiry: expiry,
                            cvv: cvv,
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Set the button color to green
                  ),
                  child: Text(
                    'Submit Payment',
                    style: TextStyle(
                      fontSize: 32, // Increase the font size
                      color: Colors.black, // Change the text color
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}