import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/provider/slider_provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("SLIDER EXAMPLE"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Consumer<SliderProvider>(
              builder: (context, provider, child) {
                return Slider(
                  value: provider.sliderValue,
                  onChanged: (value) {
                    provider.setSliderValue(value);
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<SliderProvider>(
                builder: (context, provider, child) {
                  return Container(
                    height: 100,
                    width: 150,
                    color: Colors.black.withOpacity(provider.sliderValue),
                    child: const Center(
                      child: Text("Container one"),
                    ),
                  );
                },
              ),
              Consumer<SliderProvider>(
                builder: (context, provider, child) {
                  return Container(
                    height: 100,
                    width: 150,
                    color: Colors.blue.withOpacity(provider.sliderValue),
                    child: const Center(
                      child: Text("Container two"),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
