import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../widgets/stars/animated_stars.dart';
import '../../widgets/common/cosmic_card.dart';

class LiveGridScreen extends StatelessWidget {
  const LiveGridScreen({Key? key}) : super(key: key);

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
                    'Live Grid',
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
                        'Upcoming Events',
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
                                  content: Text('Event ${index + 1} details'),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(RoyaSpacing.lg),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Roya Championship',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium
                                            ?.copyWith(
                                              color: RoyaColors.textPrimary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: RoyaSpacing.md,
                                          vertical: RoyaSpacing.sm,
                                        ),
                                        decoration: BoxDecoration(
                                          color: RoyaColors.limeYellow
                                              .withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(
                                            RoyaBorderRadius.sm,
                                          ),
                                        ),
                                        child: Text(
                                          '${14 - index} days',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color: RoyaColors.limeYellow,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: RoyaSpacing.md),
                                  Text(
                                    '📍 Speedway Arena • ${DateTime.now().add(Duration(days: 14 - index)).toString().split(' ')[0]}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          color: RoyaColors.textSecondary,
                                        ),
                                  ),
                                  const SizedBox(height: RoyaSpacing.md),
                                  Text(
                                    'Join us for an incredible day of racing, innovation, and community engagement.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: RoyaColors.textSecondary,
                                        ),
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
