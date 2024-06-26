import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yapdex/core/data/repositories/authentication_repository.dart';
import 'package:yapdex/core/guards/guard.dart';

class AuthenticatedGuard extends ConsumerWidget {
  final Widget child;
  final String fallbackRoute;

  const AuthenticatedGuard({
    super.key,
    required this.child,
    required this.fallbackRoute,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authRepositoryProvider);
    return Guard(
      canActivate: authState.maybeMap(
        authenticated: (_) async => true,
        orElse: () async => false,
      ),
      fallbackRoute: fallbackRoute,
      child: child,
    );
  }
}
