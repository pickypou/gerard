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
    if (MediaQuery.sizeOf(context).width > 750) {
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
        GestureDetector(
          onTap: () {
            GoRouter.of(context).go('/');
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Center(
              child: Text(
                '',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
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
        child: ListView(padding: EdgeInsets.zero, children: [
          ListTile(
            title: const Text(''),
            onTap: () {
              GoRouter.of(context).go('/');
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Accueil'),
            onTap: () {
              GoRouter.of(context).go('/');
              Navigator.pop(context);
            },
          ),
        ]));
  }
}
