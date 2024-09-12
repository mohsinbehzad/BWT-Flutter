import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/search_viewmodel.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;

  const SearchBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Search movies...',
          hintStyle: const TextStyle(color: Colors.black),
          suffixIcon: IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {
              if (controller.text.isNotEmpty) {
                Provider.of<SearchViewModel>(context, listen: false)
                    .searchMovies(controller.text);
              }
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),
        ),
        onSubmitted: (query) {
          if (query.isNotEmpty) {
            Provider.of<SearchViewModel>(context, listen: false)
                .searchMovies(query);
          }
        },
      ),
    );
  }
}
