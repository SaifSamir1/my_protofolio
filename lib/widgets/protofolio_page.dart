import 'package:flutter/material.dart';
import 'home_categories_list.dart';
import 'home_desktop_layout.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
      child: Column(
        children: [
          CategoriesList(),
          Divider(
            height: 50,
            color: Color(0xff4D4D4D),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: HomeDesktopLayout(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
