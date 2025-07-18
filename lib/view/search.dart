import 'package:flutter/material.dart';
import 'package:tourism/view/hotels.dart';
import 'package:tourism/view/lakes.dart';
import 'package:tourism/view/mountain.dart';
import 'package:tourism/view/nationalparkPage.dart';

void main() {
  runApp(SearchPage());
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  List<String> _suggestions = [
    'Tana',
    'Lakes',
    'Mountains',
    'National Parks',
  ];

  void _onSuggestionSelected(String suggestion) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          switch (suggestion) {
            case 'National Parks':
              return NatiionalParksPage();
            case 'National Park':
              return NatiionalParksPage();
              case 'omo Parks':
              return NatiionalParksPage();
              case 'bale Parks':
              return NatiionalParksPage();
              case 'simein Parks':
              return NatiionalParksPage();
            case 'semein Parks':
              return NatiionalParksPage();
              case 'nechisar Parks':
              return NatiionalParksPage();
            case 'Lakes':
              return LakesPage();
              case 'wenchi':
              return LakesPage();
            case 'tana':
              return LakesPage();
              case 'abaya':
              return LakesPage();
              case 'abjata':
              return LakesPage();
              case 'chamo':
              return LakesPage();
            case 'Mountains':
              return MountainsPage();
              case 'ras dashen':
              return MountainsPage();
              case 'aksum':
              return MountainsPage();
              case 'sofumer':
              return MountainsPage();
            case 'Hotels':
              return HotelsPage();
              case 'Hotels':
              return HotelsPage();
              case 'haile':
              return HotelsPage();
              case 'mozena':
              return HotelsPage();
              case 'kuriftu':
              return HotelsPage();
              case 'skylight':
              return HotelsPage();
            default:
              return Container();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
          ),
          onChanged: (value) {
            setState(() {
              _suggestions = [

                'Tana',
                'Lakes',
                'Mountains',
                'National Parks',
              ].where((suggestion) =>
                  suggestion.toLowerCase().contains(value.toLowerCase())).toList();
            });
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
            color: Colors.black,),
            onPressed: () {
              _onSuggestionSelected(_searchController.text);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _suggestions.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_suggestions[index]),
            onTap: () {
              _onSuggestionSelected(_suggestions[index]);
            },
          );
        },
      ),
    );
  }
}
