import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/src/presentation/di/view_model_provider.dart';

// class BoredActivityPage extends ConsumerWidget {
//   const BoredActivityPage({Key? key}) : super(key: key);

class BoredActivityPage extends ConsumerStatefulWidget {
  @override
  _BoredActivityState createState() => _BoredActivityState();
}

class _BoredActivityState extends ConsumerState<BoredActivityPage> {
  @override
  void initState() {
    super.initState();
    ref.read(boredViewModelProvider).getNewActivity(needLoader: false);
  }

  @override
  Widget build(BuildContext context) {
    var vm = ref.watch(boredViewModelProvider);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          vm.newActivity.when(data: (d) {
            return Text('${d.activity} \n ${d.getParticipant()}');
          }, error: (s, w) {
            return const SizedBox();
          }, loading: () {
            return const CircularProgressIndicator();
          }),
          ElevatedButton(
            onPressed: () {
              ref.read(boredViewModelProvider).getNewActivity(needLoader: true);
            },
            child: Text('Get New Activity'),
          )
        ],
      ),
    );
  }
}
