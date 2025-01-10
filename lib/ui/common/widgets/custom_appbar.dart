import 'package:flutter/material.dart';
import 'package:gerard/ui/theme.dart';
import 'package:go_router/go_router.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final VoidCallback? onNavigate;

  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.onNavigate,
  });

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  Widget? getLeading(BuildContext context) {
    if (MediaQuery.sizeOf(context).width > 749) {
      return context.canPop()
          ? IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () => context.pop(),
            )
          : null;
    } else {
      return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.menu));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: theme.colorScheme.primary,
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      leading: getLeading(context),
      actions: <Widget>[
        if (actions != null)
          ...actions!.map((action) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: action,
              )),
        if (onNavigate != null)
          IconButton(
            icon: const Icon(
              Icons.new_releases,
              color: Colors.white,
            ),
            onPressed: onNavigate!,
          ),
        _buildNavigationButton(context, '/', 'Accueil'),
        _buildNavigationButton(context, '/gym_douce', 'Gym douce'),
        _buildNavigationButton(context, '/yoga', 'Yoga'),
        _buildNavigationButton(context, '/stretching', 'Stretching'),
      ],
    );
  }
  Widget _buildNavigationButton(BuildContext context, String route, String label) {
    return TextButton(
      onPressed: () {
        GoRouter.of(context).go(route);
      },
      child: Text(
        label,
        style: textStyleTextAppBar(context),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: theme.colorScheme.primary,
        elevation: 0,
        child: ListView(padding: const EdgeInsets.fromLTRB(10, 25, 0, 0), children: [
          ListTile(
            title: const Text('Accueil'),
            onTap: () {
              GoRouter.of(context).go('/');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Gym douce'),
            onTap: () {
              GoRouter.of(context).go('/gym_douce');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Yoga'),
            onTap: () {
              GoRouter.of(context).go('/yoga');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Stretching'),
            onTap: () {
              GoRouter.of(context).go('/stretching');
              Navigator.pop(context);
            },
          ),
        ]));
  }
}
