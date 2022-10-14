import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RadioButton<T> extends StatefulWidget {
  RadioButton({
    required Key key,
    required this.value,
    required this.caption,
    required this.groupValue,
    required this.onChanged,
  })  : assert(value != null),
        assert(caption != null),
        assert(groupValue != null),
        assert(onChanged != null),
        super(key: key);

  final T value;
  final T groupValue;
  final String caption;
  final Function onChanged;

  @override
  State<StatefulWidget> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    final bool selected = widget.value == widget.groupValue;

    return GestureDetector(
      onTap: () {
        widget.onChanged(widget.value);
      },
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: selected ? Colors.red : Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            widget.caption,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .button
                ?.copyWith(color: selected ? Colors.white : Colors.red),
          ),
        ),
      ),
    );
  }
}
