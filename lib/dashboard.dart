import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/helper-bloc/helper_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => HelperBloc())],
        child: const DashboardContent());
  }
}

class DashboardContent extends StatefulWidget {
  const DashboardContent({super.key});

  @override
  State<DashboardContent> createState() => _DashboardContentState();
}

class _DashboardContentState extends State<DashboardContent> {
  final textCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: textCtr,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.indigo),
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.indigo),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 2; i++)
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                      onPressed: () {
                        if (i == 0) {
                          context
                              .read<HelperBloc>()
                              .add(FirstHelper(data: textCtr.text));
                        } else {
                          context
                              .read<HelperBloc>()
                              .add(SecondHelper(data: textCtr.text));
                        }
                      },
                      child: Text((i + 1).toString())),
                )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < 2; i++)
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                      onPressed: () {
                        if (i == 0) {
                          context
                              .read<HelperBloc>()
                              .add(ThirdHelper(data: textCtr.text));
                        } else {
                          context
                              .read<HelperBloc>()
                              .add(FourthHelper(data: textCtr.text));
                        }
                      },
                      child: Text((i + 3).toString())),
                )
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "Result",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10.0,
          ),
          BlocBuilder<HelperBloc, HelperState>(
            builder: (context, state) {
              if (state is HelperSuccess) {
                return Text(
                  state.data ?? "",
                  style: const TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.w400),
                );
              }
              return const SizedBox();
            },
          )
        ],
      ),
    ));
  }
}
