import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class CustomSearchDropDown extends StatelessWidget {
  CustomSearchDropDown(
      {Key? key,
      required this.onSelected,
      required this.searchBox,
      this.buttonName,
      this.child,
      this.icons,
      this.style,
      required this.searchAbleDropdownSelectItem})
      : super(key: key);
  final Function(String value) onSelected;
  final String? buttonName;
  final IconData? icons;
  final Widget? child;
  final ButtonStyle? style;
  final bool searchBox;
  final String searchAbleDropdownSelectItem;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch<String>(
      popupProps: PopupProps.menu(
        showSelectedItems: true,
        showSearchBox: searchBox,
        // disabledItemFn: (String s) => s.startsWith('I'),
      ),
      items: const ["EBS", "OD", "Cloud LED", 'Arong'],
      onChanged: (value) {
        print("value");
        onSelected(value ?? "");
        print(value);
      },
      selectedItem: searchAbleDropdownSelectItem,
    );
  }
}
