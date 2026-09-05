import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../config/constants.dart';
import '../../widgets/common/bottom_navigation.dart';
import './the_core_screen.dart';
import './live_grid_screen.dart';
import './power_grid_screen.dart';
import './the_pit_screen.dart';
import './my_sky_screen.dart';

class RootNavigation extends StatefulWidget {
  const RootNavigation({Key? key}) : super(key: key);

  @override
  State<RootNavigation> createState() => _RootNavigationState();
}

class _RootNavigationState extends State<RootNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const TheCoreScreen(),
    const LiveGridScreen(),
    const PowerGridScreen(),
    const ThePitScreen(),
    const MySkyScreen(),
  ];

  void _onTabChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RoyaColors.deepSpace,
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
        ],
      ),
      bottomNavigationBar: CosmicBottomNavigation(
        selectedIndex: _selectedIndex,
        onTabChanged: _onTabChanged,
      ),
    );
  }
}
