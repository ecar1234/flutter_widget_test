import 'package:flutter/material.dart';
import 'package:gap/gap.dart';


enum Calendar { day, week, month, year }

enum Sizes { XS, S, M, L, XL }

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class SpecialButtons extends StatefulWidget {
  const SpecialButtons({super.key});

  @override
  State<SpecialButtons> createState() => _SpecialButtonsState();
}

class _SpecialButtonsState extends State<SpecialButtons> {

  Calendar calendarView = Calendar.day;
  Set<Sizes> selection = <Sizes>{Sizes.XS};

  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Special Buttons"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
                value: dropdownValue,
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                }),
            const Gap(10.0),
            const Text("Single choice"),
            SegmentedButton(
              segments: const <ButtonSegment<Calendar>>[
                ButtonSegment(
                    value: Calendar.day,
                    label: Text("day"),
                    icon: Icon(Icons.calendar_view_day)),
                ButtonSegment(
                    value: Calendar.week,
                    label: Text("week"),
                    icon: Icon(Icons.calendar_view_week)),
                ButtonSegment(
                    value: Calendar.month,
                    label: Text("month"),
                    icon: Icon(Icons.calendar_view_month)),
                ButtonSegment(
                    value: Calendar.year,
                    label: Text("year"),
                    icon: Icon(Icons.calendar_today)),
              ],
              selected: {calendarView},
              onSelectionChanged: (newSelection) {
                setState(() {
                  // By default there is only a single segment that can be
                  // selected at one time, so its value is always the first
                  // item in the selected set.
                  calendarView = newSelection.first;
                });
              },
            ),
            const Gap(10.0),
            const Text("multiple choice"),
            SegmentedButton(
              segments: const <ButtonSegment<Sizes>>[
                ButtonSegment(value: Sizes.XS, label: Text('XS')),
                ButtonSegment(value: Sizes.S, label: Text('S')),
                ButtonSegment(value: Sizes.M, label: Text('M')),
                ButtonSegment(
                  value: Sizes.L,
                  label: Text('L'),
                ),
                ButtonSegment(value: Sizes.XL, label: Text('XL')),
              ],
              selected: selection,
              onSelectionChanged: (newSelection) {
                setState(() {
                  selection = newSelection;
                });
              },
            ),
            const Gap(10.0),
            DropdownButton(
                value: dropdownValue,
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                }),
            const Gap(10.0),
          ],
        ),
      ),
    );
  }
}
