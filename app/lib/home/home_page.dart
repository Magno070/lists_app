import 'package:flutter/material.dart';
import 'package:lista_app/src/shared/widgets/user_image_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LISTA'),
        actions: const [
          Padding(padding: EdgeInsets.all(8), child: UserImageButton()),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Nova List'),
        icon: const Icon(Icons.edit),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: SegmentedButtonTheme(
              data: SegmentedButtonThemeData(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (states) {
                      if (states.contains(MaterialState.selected)) {
                        return Theme.of(context).colorScheme.primary;
                      }
                      return Theme.of(context).colorScheme.surface;
                    },
                  ),
                  foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (states) {
                      if (states.contains(MaterialState.selected)) {
                        return Theme.of(context).colorScheme.onPrimary;
                      }
                      return Theme.of(context).colorScheme.onSurface;
                    },
                  ),
                ),
              ),
              child: SegmentedButton<int>(
                segments: const [
                  ButtonSegment(value: 0, label: Text('Todos')),
                  ButtonSegment(value: 1, label: Text('Pendentes')),
                  ButtonSegment(value: 2, label: Text('Concluídas')),
                  ButtonSegment(value: 3, label: Text('Desativadas')),
                ],
                selected: const {0},
                onSelectionChanged: (values) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
