import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/constants/my_colors.dart';

class CustomPhoto extends StatefulWidget {
  CustomPhoto({Key? key}) : super(key: key);

  @override
  State<CustomPhoto> createState() => _CustomPhotoState();
}

class _CustomPhotoState extends State<CustomPhoto> {
  int currentIndex = 0;

  PageController? _controller = PageController();

  List<String> images = [
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
    'https://images.unsplash.com/photo-1611095566888-f1446042c8fc?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80',
  ];

  void onChangePage (index) {
  setState(() {
  currentIndex = index;
  });
  }

  @override
  Widget build(BuildContext context) {
    print(_controller);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
        ),
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                showDialogFun(context: context, image: images[index], index: index );
              },
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4.r),
                    topLeft: Radius.circular(4.r),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image(
                    fit: BoxFit.fill,
                    image: NetworkImage(images[index]),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  showDialogFun({context, String? image, int? index}) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                width: 300.w,
                height: 350.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0.r),
                  color: Colors.white,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    PageView.builder(
                      pageSnapping: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      physics: BouncingScrollPhysics(),
                      controller: _controller,
                      onPageChanged: onChangePage,
                      itemBuilder: (context, index) {
                        return  ClipRRect(
                          borderRadius: BorderRadius.circular(10.0.r),
                          child: Image(
                            width: 300.0.w,
                            height: 350.0.h,
                            fit: BoxFit.fill,
                            image: NetworkImage(image!),
                          ),
                        );
                      },
                    ),
                    Text(currentIndex.toString()),
                    Positioned(
                      left: -20,
                      top: 160.0.h,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            currentIndex = currentIndex - 1;
                            // _controller!.nextPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
                            _controller!.animateToPage(currentIndex, duration: Duration(milliseconds: 200), curve: Curves.ease);
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: MyColors.meanColor,
                          child: Icon(Icons.arrow_back, color: Colors.white,),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -20,
                      top: 160.0.h,
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            currentIndex = currentIndex + 1;
                            // _controller!.nextPage(duration: Duration(milliseconds: 200), curve: Curves.ease);
                            _controller!.animateToPage(currentIndex, duration: Duration(milliseconds: 200), curve: Curves.ease);
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: MyColors.meanColor,
                          child: Icon(Icons.arrow_forward, color: Colors.white,),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
