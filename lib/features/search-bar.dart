import 'package:flutter/material.dart';

class SearchBarPage extends StatefulWidget {
  const SearchBarPage({super.key});

  @override
  State<SearchBarPage> createState() => _SearchBarPageState();
}

class _SearchBarPageState extends State<SearchBarPage> {
  String _selectedType = 'All';

  final List<String> allItems = [
    'Apple',
    'Banana',
    'Carrot',
    'Cucumber',
    'Peach',
    'Plum',
    'Broccoli',
  ];

  final Map<String, List<String>> filterMap = {
    'All': [],
    'Fruits': ['Apple', 'Banana', 'Peach', 'Plum'],
    'Vegetables': ['Carrot', 'Cucumber', 'Broccoli'],
  };

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SearchAnchor.bar(
        barBackgroundColor: WidgetStatePropertyAll(Colors.white),
        viewBackgroundColor: Colors.white,
        barHintText: 'Search items...',
        barLeading: const Icon(Icons.search),
        barTrailing: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {
              debugPrint('Filter button tapped');
            },
          ),
        ],
        suggestionsBuilder: (context, controller) {
          final query = controller.text.toLowerCase();

          // Filter based on dropdown selection
          final itemsToSearch = filterMap[_selectedType]!.isEmpty
              ? allItems
              : filterMap[_selectedType]!;

          final results = itemsToSearch
              .where((item) => item.toLowerCase().contains(query))
              .toList();

          return [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text("Type: "),
                  const SizedBox(width: 8),
                  DropdownButton<String>(
                    value: _selectedType,
                    items: filterMap.keys.map((type) {
                      return DropdownMenuItem<String>(
                        value: type,
                        child: Text(type),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      if (newValue != null) {
                        setState(() {
                          _selectedType = newValue;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
            const Divider(),
            if (results.isEmpty)
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('No matches found'),
              )
            else
              ...results.map((item) {
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    controller.text = item;
                  },
                );
              }),
          ];
        },
      ),
    );
  }
}
