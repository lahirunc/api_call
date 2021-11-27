import 'package:api_call/controllers/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.find<Controller>();

    return Scaffold(
      body: Obx(
        () => _controller.isLoading.value
            ? const CircularProgressIndicator()
            : Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AlbumID: ${_controller.photoList[0].albumId}'),
                    Text('ID: ${_controller.photoList[0].id}'),
                    Text('title:${_controller.photoList[0].title}'),
                    Image.network(_controller.photoList[0].thumbnailUrl),
                  ],
                ),
              ),
      ),
    );
  }
}
