import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/constants/snack_bar.dart';
import 'package:project/logice/logic.dart';

class AddMhsView extends StatefulWidget {
  const AddMhsView({super.key});

  @override
  State<AddMhsView> createState() => _AddMhsViewState();
}

class _AddMhsViewState extends State<AddMhsView> {
  final TextEditingController _namaCtrl = TextEditingController();
  final TextEditingController _nimCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _kelasCtrl = TextEditingController();
  @override
  void dispose() {
    _namaCtrl.dispose();
    _nimCtrl.dispose();
    _emailCtrl.dispose();
    _kelasCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Mahasiswa"),
      ),
      body: _buildBody,
    );
  }

  Widget get _buildBody {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            controller: _namaCtrl,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Nama"),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            controller: _nimCtrl,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "NIM"),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            controller: _emailCtrl,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Email"),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: TextField(
            controller: _kelasCtrl,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: "Kelas"),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            if (_nimCtrl.text.isEmpty) {
              snackBar(context, "Please input your NIM");
            } else if (_namaCtrl.text.isEmpty) {
              snackBar(context, "Please input your nama");
            } else if (_emailCtrl.text.isEmpty) {
              snackBar(context, "Please input your email");
            } else if (_kelasCtrl.text.isEmpty) {
              snackBar(context, "Please input your kelas");
            } else {
              context.read<LogicalService>().add(AddMhsEvent(
                  nim: _nimCtrl.text,
                  nama: _namaCtrl.text,
                  email: _emailCtrl.text,
                  kelas: _kelasCtrl.text,
                  context: context));
            }
          },
          child: BlocBuilder<LogicalService, LogicState>(
              builder: (context, state) {
            if (state is AddMhsLoading) {
              bool isLoading = state.isLoading;
              return isLoading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Text("Add Mahasiswa");
            } else {
              return const Text("Add Mahasiswa");
            }
          }),
        )
      ],
    );
  }
}
