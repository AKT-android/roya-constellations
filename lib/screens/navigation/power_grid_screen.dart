import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../widgets/stars/animated_stars.dart';
import '../../widgets/common/cosmic_card.dart';

class PowerGridScreen extends StatelessWidget {
  const PowerGridScreen({Key? key}) : super(key: key);

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
                    'Power Grid',
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
                        'Our Sponsors',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: RoyaColors.textPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: RoyaSpacing.md),
                      ...List.generate(
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.only(bottom: RoyaSpacing.lg),
                          child: CosmicCard(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Sponsor ${index + 1} profile'),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(RoyaSpacing.lg),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: RoyaColors.tealPrimary
                                          .withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(
                                        RoyaBorderRadius.md,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '⚡ Sponsor ${index + 1}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              color: RoyaColors.tealBright,
                                            ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: RoyaSpacing.md),
                                  Text(
                                    'Empowering STEM innovation through technology and resources.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: RoyaColors.textSecondary,
                                        ),
                                  ),
                                  const SizedBox(height: RoyaSpacing.md),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '🎯 Power Challenge',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall
                                            ?.copyWith(
                                              color: RoyaColors.limeYellow,
                                            ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: RoyaColors.tealBright,
                                        size: 16,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
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
