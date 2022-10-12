import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
        delegate: SliverChildListDelegate([
      Stack(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(45)),
                    boxShadow: [
                      BoxShadow(blurRadius: 2),
                    ]),
                height: size.height / 5,
                child: Column(children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white70,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/person.jpg'),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        children: [
                          const Text(
                            'Burble Gun',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                          const SizedBox(height: 3),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                color: Colors.teal.shade100,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              'GOLD Member',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        '154 \$ CAN',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ],
                  )
                ]),
              ),
              const SizedBox(height: 20),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 50,
              width: size.width,
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      labelText: "What does your belly want to eat",
                      contentPadding: EdgeInsets.symmetric(horizontal: 15)),
                ),
              ),
            ),
          ),
        ],
      ),
    ]));
  }
}
