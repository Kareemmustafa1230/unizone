import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';

import 'Item Recent.dart';
import 'TextFormFieldSearch.dart';

class Search extends StatefulWidget {
  static const String routeName = 'Search';

  const Search({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController searchController = TextEditingController();
  bool showRecentItems = true;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Form(
                       // key: formKey,
                        child: TextFormFieldSearch(
                          controller: searchController,
                          labelText: 'Search...',
                          hintText: 'Search...',
                          keyboardType: TextInputType.text,
                          obscureText: false,
                          onChanged: (value) {
                            if (formKey.currentState!.mounted) {
                              setState(() {
                                showRecentItems = value.isEmpty;
                              });
                            }
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Search is required';
                            }
                            return 'null';
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        transformAlignment: Alignment.topCenter,
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xFFE6F6FC),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FlutterRemix.filter_3_fill,
                            color: Color(0xFF00A0DC),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (showRecentItems)
                    Padding(
                      padding: const EdgeInsets.only(left: 17, top: 20, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Recent',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            width: 65,
                            height: 33,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE6F6FC),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Text('See all',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF95989A),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return const ItemRecent();
                        },
                        itemCount: 20,
                      ),
                    ),
              if (!showRecentItems)
                const Text(
                  'data',
                  style: TextStyle(fontSize: 60, color: Colors.deepOrange),
                ),
            ],
          );
        },
      ),
    );
  }
}