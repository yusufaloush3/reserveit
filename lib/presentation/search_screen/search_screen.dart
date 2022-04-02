import 'package:flutter/material.dart';
import 'package:reservelt/constants/my_colors.dart';
import 'package:reservelt/constants/strings.dart';
import 'package:reservelt/widgets/custom_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          width: 360.0.w,
          child: Column(
            children: [
              SizedBox(
                height: 15.0.h,
              ),
              CustomFormField(
                hintText: 'Search here',
                suffix: GestureDetector(
                  onTap: () {
                    print('working');
                  },
                  child: const Icon(
                    Icons.search_outlined,
                    color: MyColors.meanColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20.0.w,
                  top: 10.0.h,
                  right: 20.0.w,
                  left: 20.0.w,
                ),
                child: GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 360 / 350,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 9,
                    itemBuilder: (BuildContext context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, searchSecondScreen);
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(8.0.r),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0.r),
                                child: Image(
                                  fit: BoxFit.fill,
                                  height: 200.h,
                                  width: 360.0.w,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 10.0.h,
                              left: 8.0.w,
                              child: Text(
                                'Restaurants',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.0.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
