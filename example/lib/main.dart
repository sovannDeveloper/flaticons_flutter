import 'package:f_icons/f_icons.dart';
import 'package:flutter/material.dart';

void main() => runApp(const FIconsExampleApp());

class FIconsExampleApp extends StatelessWidget {
  const FIconsExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'f_icons Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const FIconsExamplePage(),
    );
  }
}

class FIconsExamplePage extends StatelessWidget {
  const FIconsExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('f_icons example'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const _UsageBlock(),
          const SizedBox(height: 16),
          const _Section(
            title: 'Use CSS prefix classes',
            subtitle:
                'CSS prefixes map to Dart classes: fi-br- becomes Br, fi-rs- becomes Rs, and fi-sr- becomes Sr.',
            children: [
              _IconSample(
                  cssClass: 'fi-br-access-control',
                  iconName: 'Br.access_control',
                  icon: Br.access_control),
              _IconSample(
                  cssClass: 'fi-rs-arrow-right',
                  iconName: 'Rs.arrow_right',
                  icon: Rs.arrow_right),
              _IconSample(
                  cssClass: 'fi-sr-book', iconName: 'Sr.book', icon: Sr.book),
              _IconSample(
                  cssClass: 'fi-ts-search',
                  iconName: 'Ts.search',
                  icon: Ts.search),
            ],
          ),
          const SizedBox(height: 16),
          const _Section(
            title: 'Names that start with numbers',
            subtitle:
                'Dart identifiers cannot start with a number, so generated names use i_.',
            children: [
              _IconSample(
                  cssClass: 'fi-br-360-degrees',
                  iconName: 'Br.i_360_degrees',
                  icon: Br.i_360_degrees),
              _IconSample(
                  cssClass: 'fi-ss-00s-music-disc',
                  iconName: 'Ss.i_00s_music_disc',
                  icon: Ss.i_00s_music_disc),
            ],
          ),
          const SizedBox(height: 16),
          const _Section(
            title: 'Compatibility aliases',
            subtitle: 'FlatIcon aliases are still available for older code.',
            children: [
              _IconSample(
                  cssClass: 'fi-rr-play',
                  iconName: 'FlatIcon.r_play',
                  icon: FlatIcon.r_play),
              _IconSample(
                  cssClass: 'fi-sr-book',
                  iconName: 'FlatIcon.s_book',
                  icon: FlatIcon.s_book),
              _IconSample(
                  cssClass: 'fi-tr-bullseye',
                  iconName: 'FlatIcon.t_bullseye',
                  icon: FlatIcon.t_bullseye),
            ],
          ),
          const SizedBox(height: 16),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Rs.add),
            label: const Text('Button with Rs.add'),
            style: FilledButton.styleFrom(
              backgroundColor: colorScheme.primary,
              foregroundColor: colorScheme.onPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class _UsageBlock extends StatelessWidget {
  const _UsageBlock();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Import', style: textTheme.titleMedium),
            const SizedBox(height: 8),
            const SelectableText("import 'package:f_icons/f_icons.dart';"),
            const SizedBox(height: 16),
            Text('Sample', style: textTheme.titleMedium),
            const SizedBox(height: 8),
            const SelectableText('Icon(Rs.arrow_right)'),
          ],
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.title,
    required this.subtitle,
    required this.children,
  });

  final String title;
  final String subtitle;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: textTheme.titleMedium),
            const SizedBox(height: 4),
            Text(subtitle, style: textTheme.bodySmall),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: children,
            ),
          ],
        ),
      ),
    );
  }
}

class _IconSample extends StatelessWidget {
  const _IconSample({
    required this.cssClass,
    required this.iconName,
    required this.icon,
  });

  final String cssClass;
  final String iconName;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 150,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: colorScheme.outlineVariant),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 32, color: colorScheme.primary),
              const SizedBox(height: 8),
              Text(
                iconName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.labelMedium,
              ),
              const SizedBox(height: 2),
              Text(
                cssClass,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
