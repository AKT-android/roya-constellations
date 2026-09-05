import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../widgets/stars/animated_stars.dart';
import '../../widgets/common/cosmic_card.dart';

class ThePitScreen extends StatelessWidget {
  const ThePitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RoyaColors.deepSpace,
      body: Stack(
        children: [
          const AnimatedStars(),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                expandedHeight: 100,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'The Pit',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: RoyaColors.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(RoyaSpacing.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rewards & Merchandise',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: RoyaColors.textPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: RoyaSpacing.md),
                      GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: RoyaSpacing.lg,
                          mainAxisSpacing: RoyaSpacing.lg,
                          childAspectRatio: 0.85,
                        ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return CosmicCard(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Reward ${index + 1} details'),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(RoyaSpacing.md),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: RoyaColors.limeYellow
                                          .withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(
                                        RoyaBorderRadius.md,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        ['🏅', '👕', '🧢', '⌚'][index],
                                        style: const TextStyle(fontSize: 32),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Reward ${index + 1}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          color: RoyaColors.textPrimary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Text(
                                    '${500 + (index * 200)} Lumens',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelSmall
                                        ?.copyWith(
                                          color: RoyaColors.tealBright,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: RoyaSpacing.xl),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
