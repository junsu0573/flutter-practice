// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'app.dart';
import 'items.dart';

void main() {
  runApp(const App());
}

@immutable
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design Cookbook'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            onTap: () => context.go('/${item.path}'),
            leading: Icon(
              switch (item.recommendation) {
                Recommendation.yes => const IconData(0x2705),
                Recommendation.maybe => const IconData(0x2734),
                Recommendation.no => const IconData(0x26D4),
              },
            ),
            title: Text(item.name),
            subtitle: Text(item.type),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
          );
        },
      ),
    );
  }
}
