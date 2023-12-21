import 'package:flutter/material.dart';
import 'package:tradehub/components/card_item.dart';
import 'package:tradehub/components/tab_bar.dart';
import 'package:tradehub/views/categories_list.dart';
import 'package:tradehub/views/details_ad.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TradeHub',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 223, 218, 218),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CategoriesList(),
                    ),
                  );
                },
                child: Tabbar(name: 'Categorias'),
              ),
              Tabbar(name: 'Cidades'),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DetailsAD(),
                        ),
                      );
                    },
                    child: CardItem(
                      title: 'Sofá',
                      price: '500',
                      picture: 'https://source.unsplash.com/150x180/?couch',
                      city: 'São José',
                      date: '18/11',
                    ),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
