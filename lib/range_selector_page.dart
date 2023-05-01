import 'package:flutter/material.dart';
import 'package:randomnumber/randomizer_page.dart';
import 'package:randomnumber/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({Key? key})
      : super(
            key:
                key); //Keys are used for selecting particular widgets from other widgets//

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPage();
}

class _RangeSelectorPage extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        minValueSetter: ((value) => _min = value),
        maxValueSetter: ((value) => _max = value),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RandomizerPage(
                      min: _min,
                      max: _max,
                    )));
          }
        },
      ),
    );
  }
}
