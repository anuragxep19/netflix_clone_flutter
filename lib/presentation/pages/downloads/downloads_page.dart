import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/presentation/bloc/downloads/downloads_bloc.dart';
import 'package:netflix_ui/presentation/pages/downloads/Widgets/button.dart';
import 'package:netflix_ui/core/constants.dart';
import 'package:netflix_ui/presentation/pages/downloads/Widgets/images_block.dart';
import 'package:netflix_ui/presentation/pages/MainPage/widgets/app_bar_custom.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({super.key});

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
    context.read<DownloadsBloc>().add(const GetDownloadsImage());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        // Custom app bar with title
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarCustom(
            text: 'Downloads',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
          child: ListView(
            children: [
              constHeight(10),

              // Smart Downloads
              const Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(width: 10),
                  Text(
                    'Smart Downloads',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              // Heading and description text block
              const Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    'Introducing Downloads for You',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We\'ll download a personalized selection of\nfilms and programmes for you, so there\'s\nalways something to watch on your\ndevice.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                ],
              ),

              // Center visual display with rotated images
              const ImagesBlock(),

              const SizedBox(height: 60),

              // Primary action button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Button(
                  label: 'Set up',
                  buttonColor: Colors.indigo,
                  textColor: Colors.white,
                ),
              ),

              constHeight(20),

              // Secondary action button
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Button(
                  label: 'See What You Can Download',
                  buttonColor: Colors.white,
                  textColor: Colors.black,
                ),
              ),

              const SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
