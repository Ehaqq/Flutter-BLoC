import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:project/logice/logic.dart';
import 'package:project/views/add_mhs_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // final CacheToken _cacheToken = CacheToken();
  // @override
  // void initState() {
  //   context.read<LogicalService>().add(ReadUserEvent());
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dasboard"),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         _cacheToken.delelteAll(context);
        //       },
        //       icon: const Icon(Icons.logout))
        // ],
      ),
      // body: _buildBody,
      body: const Center(
        child: Text("body"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddMhsView()));
          // Future.delayed(const Duration(milliseconds: 500), () {
          //   context.read<LogicalService>().add(ReadUserEvent());
          // });
        },
        child: const Text("Add"),
      ),
    );
  }

  // Widget get _buildBody {
  //   return BlocBuilder<LogicalService, LogicState>(builder: (context, state) {
  //     if (state is LogicInitializeState || state is LogicLoadingState) {
  //       return const Center(
  //         child: CircularProgressIndicator(),
  //       );
  //     } else if (state is LogicErrorState) {
  //       String err = state.error;
  //       return Center(
  //         child: Text(err),
  //       );
  //     } else if (state is ReadUserState) {
  //       var data = state.userModel;
  //       return _buildListview(data);
  //     } else {
  //       return Container();
  //     }
  //   });
  // }
}
