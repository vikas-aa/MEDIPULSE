import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String _searchQuery = '';

  // Sample data for demonstration
  final List<Map<String, String>> _items = [
    {'name': 'BHU', 'image': 'lib/assets/pgi-lck.jpeg'},
    {'name': 'PGI LUCKNOW', 'image': 'lib/assets/pgi-lck.jpeg'},
    {'name': 'AIIMS RAIPUR', 'image': 'lib/assets/pgi-lck.jpeg'},
    {'name': 'AIIMS LUCKNOW', 'image': 'lib/assets/pgi-lck.jpeg'},
    {'name': 'AIIMS AHAMDABAD', 'image': 'lib/assets/pgi-lck.jpeg'},
    {'name': 'AIIMS PATNA', 'image': 'lib/assets/pgi-lck.jpeg'},
    {'name': 'AIMS DELHI', 'image': 'lib/assets/pgi-lck.jpeg'},
    {'name': 'AIMS MUMBAI', 'image': 'lib/assets/pgi-lck.jpeg'},
    // Add more items here
  ];

  // Filter and sort items based on the search query
  List<Map<String, String>> _getFilteredItems() {
    print('Search Query: $_searchQuery'); // Debug print
    List<Map<String, String>> filteredItems;
    
    if (_searchQuery.isEmpty) {
      filteredItems = _items;
    } else {
      filteredItems = _items
          .where((item) => item['name']!.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList()
          ..sort((a, b) {
            // Prioritize exact matches
            if (a['name']!.toLowerCase() == _searchQuery.toLowerCase()) {
              return -1;
            } else if (b['name']!.toLowerCase() == _searchQuery.toLowerCase()) {
              return 1;
            }
            return 0;
          });
    }
    
    print('Filtered Items: $filteredItems'); // Debug print
    return filteredItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              onChanged: (query) {
                setState(() {
                  _searchQuery = query;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Search...',
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: _getFilteredItems().map((item) {
                return SizedBox(
                  height: 200,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: Color.fromARGB(255, 8, 7, 7),
                        width: 2.0,
                      ),
                      image: DecorationImage(
                        image: AssetImage(item['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          left: 2,
                          bottom: 0,
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              item['name']!,
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                backgroundColor: Color.fromARGB(255, 228, 230, 231),
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
