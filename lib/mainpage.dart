import 'package:flutter/material.dart';
import 'package:untitled3/ProductWidget.dart';
import 'package:untitled3/Shop%20Data.dart';
import 'package:untitled3/grid.dart';
import 'package:untitled3/shopModel.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String type1 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xFC961414),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                'https://plus.unsplash.com/premium_photo-1679056833362-f6e9b53774c1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2809&q=80',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Types',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: GestureDetector(
                          onTap: () {
                            type1 = Types[index];
                            setState(() {});
                          },
                          child: Container(
                            width: 100,
                            height: 50,
                            color: Colors.black,
                            child: Center(
                                child: Text(
                              Types[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: type1 == 'all' ? pro.length:
                      pro.where((element) => (element.type.name) == type1).length ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    if (type1 != 'all') {
                      Product product = pro
                          .where((element) => (element.type.name) == type1)
                          .toList()[index];
                      return ProductWidget(product);
                    } else {
                      return ProductWidget(pro[index]);
                    }                }),
            )
          ],
        ),
      ),
    );
  }
}
