import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:reservelt/presentation/howe_screen/modals/carousel_modal.dart';

class CustomCarousel extends StatelessWidget {
  CustomCarousel({Key? key}) : super(key: key);

  List<CarouselModal> carouselList = [
    CarouselModal(
      id: '1',
      image:
          'https://images.unsplash.com/photo-1533777857889-4be7c70b33f7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80',
      name: 'Kampai Hale',
    ),
    CarouselModal(
      id: '2',
      image:
          'https://images.unsplash.com/photo-1590846406792-0adc7f938f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80',
      name: 'Kampai Hale',
    ),
    CarouselModal(
      id: '3',
      image:
          'https://images.unsplash.com/photo-1502301103665-0b95cc738daf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80',
      name: 'Kampai Hale',
    ),
    CarouselModal(
      id: '4',
      image:
          'https://images.unsplash.com/photo-1550966871-3ed3cdb5ed0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      name: 'Kampai Hale',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.h,
      child: Swiper(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5.0.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0.r),
                  child: Image(
                    image: NetworkImage(carouselList[index].image!),
                    width: 340,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 10.0.h,
                left: 15.0.w,
                child: Text(
                  carouselList[index].name!,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: carouselList.length,
        indicatorLayout: PageIndicatorLayout.SCALE,
        autoplay: true,
        onTap: (index) {
          print(index);
        },
        autoplayDelay: 2000,
        pagination: new SwiperPagination(
          alignment: Alignment.bottomRight,
          margin: EdgeInsets.only(
            right: 60.0.w,
            bottom: 15.0.h,
          ),
        ),
        fade: 1.0,
        viewportFraction: 0.85,
      ),
    );
  }
}
