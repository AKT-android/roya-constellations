import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../config/constants.dart';

class CosmicBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;

  const CosmicBottomNavigation({
    Key? key,
    required this.selectedIndex,
    required this.onTabChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = [
      _NavItem('☄️', RoyaConstants.tabCoreLabel, 0),
      _NavItem('🎯', RoyaConstants.tabLiveGridLabel, 1),
      _NavItem('⚡', RoyaConstants.tabPowerGridLabel, 2),
      _NavItem('🎁', RoyaConstants.tabPitLabel, 3),
      _NavItem('🌌', RoyaConstants.tabMySkyLabel, 4),
    ];

    return Container(
      decoration: BoxDecoration(
        color: RoyaColors.navySecondary,
        border: Border(
          top: BorderSide(
            color: RoyaColors.border,
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            items.length,
            (index) {
              final item = items[index];
              final isSelected = selectedIndex == index;

              return GestureDetector(
                onTap: () => onTabChanged(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.symmetric(
                    horizontal: RoyaSpacing.md,
                    vertical: RoyaSpacing.lg,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        item.icon,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 4),
                      AnimatedDefaultTextStyle(
                        duration: const Duration(milliseconds: 300),
                        style: TextStyle(
                          fontSize: isSelected ? 12 : 10,
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: isSelected
                              ? RoyaColors.tealBright
                              : RoyaColors.textSecondary,
                        ),
                        child: Text(item.label),
                      ),
                      if (isSelected)
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Container(
                            width: 24,
                            height: 2,
                            decoration: BoxDecoration(
                              color: RoyaColors.tealBright,
                              borderRadius:
                                  BorderRadius.circular(RoyaBorderRadius.sm),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _NavItem {
  final String icon;
  final String label;
  final int index;

  _NavItem(this.icon, this.label, this.index);
}
