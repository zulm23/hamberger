import 'package:flutter/material.dart';

class HambergerList extends StatefulWidget {
  const HambergerList({super.key});

  @override
  State<HambergerList> createState() => _HambergerListState();
}

class _HambergerListState extends State<HambergerList> {
  @override
  Widget build(BuildContext context) {
    int items = 10;
    Widget baconImage = const CircleAvatar(
      backgroundColor: Colors.white,
      maxRadius: 50,
      child: CircleAvatar(
          maxRadius: 45,
          backgroundImage: AssetImage('images/hambergerBulat.jpg')),
    );
    Widget chickenImage = const HambergerImage();
    return SliverToBoxAdapter(
      child: Container(
          height: 240,
          margin: const EdgeInsets.only(top: 10),
          child: ListView.builder(
            itemCount: items,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Stack(
              children: [
                Container(
                  height: 240,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 20, right: index == items ? 20 : 0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Card(
                      elevation: 3,
                      margin: const EdgeInsets.all(10),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(45),
                          topRight: Radius.circular(45),
                        ),
                      ),
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Text(
                              'Burger $index',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                const Spacer(),
                                const Text(
                                  '15,95 \$ CAN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Icon(Icons.add)),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 10,
                  child: GestureDetector(
                    onTap: () {},
                    child: index.isEven ? chickenImage : baconImage,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class HambergerImage extends StatelessWidget {
  const HambergerImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/chicken.jpg'),
          ),
          borderRadius: BorderRadius.circular(25)),
      height: 160,
      width: 160,
      // child: Image.asset(),
    );
  }
}
