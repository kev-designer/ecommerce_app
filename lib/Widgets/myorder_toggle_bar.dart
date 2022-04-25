library toggle_bar;

import 'dart:collection';
import 'package:flutter/material.dart';

import 'colors.dart';

class MyOrdersToggleBar extends StatefulWidget {
  final TextStyle labelTextStyle;
  final Color backgroundColor;
  final BoxBorder backgroundBorder;
  final Color selectedTabColor;
  final Color selectedTextColor;
  final Color textColor;
  final List<String> labels;
  final Function(int) onSelectionUpdated;

  const MyOrdersToggleBar(
      {Key key,
      @required this.labels,
      this.backgroundColor = Colors.transparent,
      this.backgroundBorder,
      this.selectedTabColor = ColorData.primary,
      this.selectedTextColor = ColorData.primary,
      this.textColor = Colors.black,
      this.labelTextStyle = const TextStyle(),
      this.onSelectionUpdated})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyOrdersToggleBarState();
  }
}

class _MyOrdersToggleBarState extends State<MyOrdersToggleBar> {
  LinkedHashMap<String, bool> _hashMap = LinkedHashMap();
  int _selectedIndex = 0;

  @override
  void initState() {
    _hashMap = LinkedHashMap.fromIterable(widget.labels,
        value: (value) => value = false);
    _hashMap[widget.labels[0]] = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 58,
        decoration: BoxDecoration(
            color: widget.backgroundColor,
            border: widget.backgroundBorder,
            borderRadius: BorderRadius.circular(5)),
        child: ListView.builder(
            itemCount: widget.labels.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                  child: Container(
                    alignment: Alignment.center,
                    width: (MediaQuery.of(context).size.width - 30) /
                        widget.labels.length,
                    child: Text(_hashMap.keys.elementAt(index),
                        textAlign: TextAlign.center,
                        style: widget.labelTextStyle.apply(
                            color: _hashMap.values.elementAt(index)
                                ? widget.selectedTextColor
                                : widget.textColor)),
                    decoration: BoxDecoration(
                      border: _hashMap.values.elementAt(index)
                          ? Border.all(
                              color: ColorData.primary,
                            )
                          : null,
                      color: _hashMap.values.elementAt(index)
                          ? widget.selectedTabColor.withOpacity(.1)
                          : null,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onHorizontalDragUpdate: (dragUpdate) async {
                    int calculatedIndex = ((widget.labels.length *
                                    (dragUpdate.globalPosition.dx /
                                        (MediaQuery.of(context).size.width -
                                            32)))
                                .round() -
                            1)
                        .clamp(0, widget.labels.length - 1);

                    if (calculatedIndex != _selectedIndex) {
                      _updateSelection(calculatedIndex);
                    }
                  },
                  onTap: () async {
                    if (index != _selectedIndex) {
                      _updateSelection(index);
                    }
                  });
            }));
  }

  _updateSelection(int index) {
    setState(() {
      _selectedIndex = index;
      widget.onSelectionUpdated(_selectedIndex);
      _hashMap.updateAll((label, selected) => selected = false);
      _hashMap[_hashMap.keys.elementAt(index)] = true;
    });
  }
}
