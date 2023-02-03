import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone/views/components/constants/strings.dart';
import 'package:instagram_clone/views/components/dialogs/alert_dialog_model.dart';
import 'package:instagram_clone/views/components/dialogs/logout_dialog.dart';
import 'package:instagram_clone/views/tabs/user_posts/user_posts_view.dart';

import '../../state/auth/providers/auth_state_provider.dart';

class MainView extends ConsumerStatefulWidget {
  const MainView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.appName),
          actions: [
            IconButton(
              onPressed: () async {},
              icon: const FaIcon(
                FontAwesomeIcons.film,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_photo_alternate_outlined,
              ),
            ),
            IconButton(
              onPressed: () async {
                final shouldLogout = await LogoutDialog().present(context).then(
                      (value) => value ?? false,
                    );
                if (shouldLogout) {
                  await ref.read(authStateNotifier.notifier).logOut();
                }
              },
              icon: const Icon(
                Icons.logout,
              ),
            ),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(
                Icons.person,
              ),
            ),
            Tab(
              child: Icon(
                Icons.home,
              ),
            ),
            Tab(
              child: Icon(
                Icons.search,
              ),
            ),
          ]),
        ),
        body: const TabBarView(children: [
          UserPostsView(),
          UserPostsView(),
          UserPostsView(),
        ]),
      ),
    );
  }
}
