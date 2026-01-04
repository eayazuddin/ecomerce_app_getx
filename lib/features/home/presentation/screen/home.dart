import 'package:flutter/material.dart';
import '../widgets/appBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const HomeScreenAppbarTitle(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 🔍 Search
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              /// 🖼 Slider (UI only)
             /* const SizedBox(
                height: 180,
                child: HomeSlider(sliders: []),
              ),*/

              const SizedBox(height: 16),

              /// 📂 Categories
             /* SectionHeader(
                title: 'All Categories',
                onTap: () {},
              ),*/
              const SizedBox(height: 8),
             /* SizedBox(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return const CategoryCard(categoryData: null);
                  },
                ),
              ),*/

              const SizedBox(height: 16),

              /// ⭐ Popular
             /* SectionHeader(
                title: 'Popular',
                onTap: () {},
              ),*/
              // ProductListView(productData: const []),

              const SizedBox(height: 16),

              /// 🎯 Special
            /*  SectionHeader(
                title: 'Special',
                onTap: () {},
              ),*/
          /*    ProductListView(productData: const []),*/

              const SizedBox(height: 16),

              /// 🆕 New
            /*  SectionHeader(
                title: 'New',
                onTap: () {},
              ),*/
              // ProductListView(productData: const []),
            ],
          ),
        ),
      ),
    );
  }
}
