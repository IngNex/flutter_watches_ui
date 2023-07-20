import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({
    Key? key,
    required this.product,
    required this.index,
  }) : super(key: key);
  final String product;
  final int index;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    final watches = [
      'assets/watches/4.png',
      'assets/watches/5.png',
      'assets/watches/6.png',
      'assets/watches/7.png',
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Icon(Icons.more_vert),
                    ),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(225, 247, 97, 96),
                      ),
                      child: const Text(
                        '-15%',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 30,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: const BorderRadius.all(
                          Radius.elliptical(100, 20),
                        ),
                      ),
                    ),
                  ),
                  Hero(
                    tag: 'watches${widget.index}',
                    child: Image(
                      image: AssetImage(widget.product),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Apple Watch Series',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '\$110.00',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: List.generate(
                      5,
                      (index) => const Icon(
                        Icons.star_sharp,
                        size: 18,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 2,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      const Text(
                        '\$150.00',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Smartwatch con GPS, pantalla táctil, música, monitoreo de salud 24/7, sensor de frecuencia pulsioximetria y una gran cantidad de deportes precargados. Smartwatch con GPS, pantalla táctil, música, monitoreo de salud 24/7, sensor de frecuencia pulsioximetria y una gran cantidad de deportes precargados.',
                style: TextStyle(height: 1.45),
              ),
              const SizedBox(height: 10),
              const Text(
                'Watch Strap Color',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: List.generate(
                    watches.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Card(
                        elevation: 5,
                        child: Image(
                          width: 50,
                          image: AssetImage(watches[index]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Quantity',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 24, 241, 238))),
                        child: const Icon(size: 18, Icons.remove),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '1',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 1,
                                color: Color.fromARGB(255, 24, 241, 238))),
                        child: const Icon(size: 18, Icons.add),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 24, 241, 238),
                  border: Border.all(
                      width: 2, color: Color.fromARGB(255, 18, 204, 201)),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  'Add to Cart',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
