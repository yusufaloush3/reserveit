import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/widgets/custom_large_button.dart';

List<int> list = List<int>.generate(30, (i) => i + 1);

class CustomReservit extends StatefulWidget {
  const CustomReservit({Key? key}) : super(key: key);

  @override
  State<CustomReservit> createState() => _CustomReservitState();
}

class _CustomReservitState extends State<CustomReservit> {
  DatePickerController _controller = DatePickerController();
  int? numberOfGuests = 2;
  TimeOfDay selectedTime = TimeOfDay.now();

  DateTime _selectedValue = DateTime.now();

  _selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if(timeOfDay != null && timeOfDay != selectedTime)
    {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print(_selectedValue);
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose a date:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0.sp,
                    ),
                  ),
                  Icon(MdiIcons.calendarMonth),
                ],
              ),
            ),
            SizedBox(height: 10.0.h),
            Container(
              child: DatePicker(
                DateTime.now(),
                width: 60,
                height: 80,
                controller: _controller,
                initialSelectedDate: DateTime.now(),
                selectionColor: MyColors.meanColor,
                selectedTextColor: Colors.white,
                // inactiveDates: [
                //   DateTime.now().add(Duration(days: 3)),
                //   DateTime.now().add(Duration(days: 4)),
                //   DateTime.now().add(Duration(days: 7))
                // ],
                onDateChange: (date) {
                  // New date selected
                  setState(() {
                    _selectedValue = date;
                  });
                },
              ),
            ),
            SizedBox(height: 10.0.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Number of guests:',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0.h),
            Padding(
              padding: EdgeInsets.only(left: 20.0.w),
              child: Container(
                height: 40.0.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10.0.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                numberOfGuests = list[index];
                              });
                            },
                            child: CircleAvatar(
                              radius: 20.0,
                              backgroundColor: numberOfGuests == list[index]
                                  ? MyColors.meanColor
                                  : MyColors.borderInputColor,
                              child: Text(
                                list[index].toString(),
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10.0.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Time:',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.0.sp,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0.h),
            GestureDetector(
              onTap: () {
                _selectTime(context);
              },
              child: Container(
                width: 320.w,
                height: 38.0.h,
                decoration: BoxDecoration(
                  color: MyColors.borderInputColor,
                  borderRadius: BorderRadius.circular(8.0.r),
                ),
                child: Center(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedTime.format(context).toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0.h),
            customLargeButton(context: context, name: 'ReserveIt!'),
          ],
        ),
      ),
    );
  }
}
