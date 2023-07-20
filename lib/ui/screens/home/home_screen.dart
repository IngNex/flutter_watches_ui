import 'package:flutter/material.dart';
import 'package:flutter_watches_ui/ui/screens/product/product_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final watches = [
      'assets/watches/1.png',
      'assets/watches/2.png',
      'assets/watches/3.png',
      'assets/watches/4.png',
      'assets/watches/5.png',
      'assets/watches/6.png',
      'assets/watches/7.png',
      'assets/watches/8.png',
      'assets/watches/9.png',
      'assets/watches/10.png',
    ];

    final List<dynamic> navigBottom = [
      [Icons.home_rounded, "Home"],
      [Icons.sms_rounded, "Message"],
      [Icons.shopping_cart_rounded, "Cart"],
      [Icons.account_circle_rounded, "Account"],
    ];
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                      color: const Color.fromARGB(255, 24, 241, 238),
                    ),
                    child: const Icon(Icons.sort),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Image(image: AssetImage('assets/ingnex.png')),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                textAlign: TextAlign.start,
                text: const TextSpan(
                  text: 'Your Favorite',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  children: [
                    TextSpan(
                      text: ' Watch',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Search',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                              color: const Color.fromARGB(255, 24, 241, 238),
                            ),
                            child: const Icon(Icons.short_text),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  itemCount: watches.length,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            transitionDuration:
                                const Duration(milliseconds: 650),
                            reverseTransitionDuration:
                                const Duration(milliseconds: 650),
                            pageBuilder: (context, animation, _) {
                              return FadeTransition(
                                opacity: animation,
                                child: ProductScreen(
                                  index: index,
                                  product: watches[index],
                                ),
                              );
                            },
                          ),
                        );
                      },
                      child: Card(
                        elevation: 5,
                        child: Stack(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5.0),
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(4.0)),
                                  color: Color.fromARGB(225, 247, 97, 96)),
                              child: const Text(
                                '-15%',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Hero(
                                      tag: 'watches$index',
                                      child: Image(
                                        image: AssetImage(
                                          watches[index],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Watch Series ',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: List.generate(
                                        5,
                                        (index) => const Icon(
                                          Icons.star_sharp,
                                          size: 18,
                                          color: Colors.yellow,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        '\$110.00',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
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
                                            '\$90.00',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 8,
                      spreadRadius: 0.5,
                      offset: Offset(3, 3),
                      color: Colors.grey)
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  navigBottom.length,
                  (index) => Column(
                    children: [
                      index == 1 || index == 2
                          ? Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Icon(
                                  navigBottom[index][0],
                                  size: 30,
                                  color: index == 0
                                      ? const Color.fromARGB(255, 24, 241, 238)
                                      : Colors.grey,
                                ),
                                Positioned(
                                  top: -2,
                                  right: -2,
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle),
                                  ),
                                ),
                              ],
                            )
                          : Icon(
                              navigBottom[index][0],
                              size: 30,
                              color: index == 0
                                  ? const Color.fromARGB(255, 24, 241, 238)
                                  : Colors.grey,
                            ),
                      Text(
                        navigBottom[index][1],
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 11),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
