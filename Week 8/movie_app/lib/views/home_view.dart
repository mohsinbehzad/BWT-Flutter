import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/home_viewmodel.dart';
import '../views/search_view.dart';
import '../views/library_view.dart';
import '../views/movie_details_view.dart';
import '../widgets/bottom_nav_item.dart';
import '../models/movie.dart';
import '../widgets/movie_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onBottomNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeView()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SearchView()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const LibraryView()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.teal,
        title: Image.asset(
          'assets/images/logo.png',
          height: 40,
        ),
        centerTitle: true,
      ),
      body: Consumer<HomeViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView(
            children: [
              _buildSection('Popular Movies', viewModel.popularMovies),
              _buildSection('Top Rated Movies', viewModel.topRatedMovies),
              _buildSection('Upcoming Movies', viewModel.upcomingMovies),
              _buildSection('Now Playing Movies', viewModel.nowPlayingMovies),
            ],
          );
        },
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 75,
        decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.vertical(top: Radius.circular(27)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavItem(
              icon: Icons.home,
              label: 'Home',
              isSelected: _selectedIndex == 0,
              onTap: () => _onBottomNavItemTapped(0),
            ),
            BottomNavItem(
              icon: Icons.search,
              label: 'Search',
              isSelected: _selectedIndex == 1,
              onTap: () => _onBottomNavItemTapped(1),
            ),
            BottomNavItem(
              icon: Icons.library_books,
              label: 'Library',
              isSelected: _selectedIndex == 2,
              onTap: () => _onBottomNavItemTapped(2),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Movie> movies) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: MovieCard(
                    movie: movies[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailsView(
                            movieId: movies[index].id,
                          ),
                        ),
                      );
                    },
                    showDetails: false,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
