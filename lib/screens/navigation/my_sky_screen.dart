import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../widgets/stars/animated_stars.dart';
import '../../widgets/common/cosmic_card.dart';

class MySkyScreen extends StatelessWidget {
  const MySkyScreen({Key? key}) : super(key: key);

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
                    'My Sky',
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
                      // Profile Card
                      CosmicCard(
                        child: Padding(
                          padding: const EdgeInsets.all(RoyaSpacing.lg),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor:
                                    RoyaColors.tealBright.withOpacity(0.2),
                                child: Text(
                                  'AB',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                        color: RoyaColors.tealBright,
                                      ),
                                ),
                              ),
                              const SizedBox(height: RoyaSpacing.md),
                              Text(
                                'Abdullah K',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      color: RoyaColors.textPrimary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: RoyaSpacing.sm),
                              Text(
                                '⭐ Royalneer Status',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall
                                    ?.copyWith(
                                      color: RoyaColors.limeYellow,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: RoyaSpacing.lg),
                      // Stats
                      Row(
                        children: [
                          Expanded(
                            child: CosmicCard(
                              child: Padding(
                                padding: const EdgeInsets.all(RoyaSpacing.lg),
                                child: Column(
                                  children: [
                                    Text(
                                      '18',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(
                                            color: RoyaColors.tealBright,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: RoyaSpacing.sm),
                                    Text(
                                      'Events Attended',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            color: RoyaColors.textSecondary,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: RoyaSpacing.lg),
                          Expanded(
                            child: CosmicCard(
                              child: Padding(
                                padding: const EdgeInsets.all(RoyaSpacing.lg),
                                child: Column(
                                  children: [
                                    Text(
                                      '24',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium
                                          ?.copyWith(
                                            color: RoyaColors.limeYellow,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    const SizedBox(height: RoyaSpacing.sm),
                                    Text(
                                      'StarMarks Found',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall
                                          ?.copyWith(
                                            color: RoyaColors.textSecondary,
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: RoyaSpacing.lg),
                      Text(
                        'Achievements',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: RoyaColors.textPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: RoyaSpacing.md),
                      Wrap(
                        spacing: RoyaSpacing.md,
                        runSpacing: RoyaSpacing.md,
                        children: ['🏆', '🌟', '🚀', '⚡', '💫', '🎯']
                            .map(
                              (badge) => Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: RoyaColors.elevatedSurface,
                                  borderRadius: BorderRadius.circular(
                                    RoyaBorderRadius.lg,
                                  ),
                                  border: Border.all(
                                    color: RoyaColors.border,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    badge,
                                    style: const TextStyle(fontSize: 24),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
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
