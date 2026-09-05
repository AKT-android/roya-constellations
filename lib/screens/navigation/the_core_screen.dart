import 'package:flutter/material.dart';
import '../../config/theme.dart';
import '../../widgets/stars/animated_stars.dart';
import '../../widgets/common/cosmic_card.dart';
import '../../widgets/common/cosmic_button.dart';

class TheCoreSc​reen extends StatelessWidget {
  const TheCoreSc​reen({Key? key}) : super(key: key);

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
                    'The Core',
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
                      // Welcome card
                      CosmicCard(
                        child: Padding(
                          padding: const EdgeInsets.all(RoyaSpacing.lg),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome back, Royaneer! 👋',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(
                                      color: RoyaColors.textPrimary,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: RoyaSpacing.md),
                              Text(
                                'Keep earning Lumens and unlock amazing rewards!',
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
                      const SizedBox(height: RoyaSpacing.lg),
                      // Lumens card
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              RoyaColors.tealPrimary.withOpacity(0.2),
                              RoyaColors.blueAccent.withOpacity(0.2),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(RoyaBorderRadius.lg),
                          border: Border.all(
                            color: RoyaColors.tealBright.withOpacity(0.3),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(RoyaSpacing.lg),
                          child: Column(
                            children: [
                              Text(
                                'Your Lumens',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: RoyaColors.textSecondary,
                                    ),
                              ),
                              const SizedBox(height: RoyaSpacing.sm),
                              Text(
                                '2,450',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: RoyaColors.limeYellow,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: RoyaSpacing.sm),
                              Text(
                                '⭐ Royalneer Status',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: RoyaColors.tealBright,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: RoyaSpacing.lg),
                      // Quick actions
                      Text(
                        'Quick Actions',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: RoyaColors.textPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: RoyaSpacing.md),
                      SizedBox(
                        width: double.infinity,
                        child: CosmicButton(
                          label: '📱 Scan StarMark',
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('StarMark scanner opening...'),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: RoyaSpacing.md),
                      SizedBox(
                        width: double.infinity,
                        child: CosmicButton(
                          label: '🎁 View Rewards',
                          onPressed: () {},
                          variant: 'secondary',
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
