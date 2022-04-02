import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reservelt/widgets/custom_text.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                fontSize: 22.sp,
                color: Colors.black87,
                text: 'Terms & Conditions',
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 10,
              ),
              customText(
                fontSize: 15.sp,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                text:
                    'ReserveIt instrument set estimating remarkably solicitude motionless. Property men the why smallest graceful day insisted required. Inquiry justice country old placing sitting any ten age. Looking venture justice in evident in totally he do ability. Be is lose girl long of up give. Trifling wondered unpacked ye at he. In household certainty an on tolerably smallness difficult. Many no each like up be is next neat. Put not enjoyment behaviour her supposing. At he pulled object others. ',
              ),
              const SizedBox(height: 10,),
              customText(
                fontSize: 15.sp,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                text: 'Breakfast agreeable incommode departure it an. By ignorant at on wondered relation. Enough at tastes really so cousin am of. Extensive therefore supported by extremity of contented. Is pursuit compact demesne invited elderly be. View him she roof tell her case has sigh. Moreover is possible he admitted sociable concerns. By in cold no less been sent hard hill.',
              ),
              const SizedBox(height: 10,),
              customText(
                fontSize: 15.sp,
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                text: 'Indulgence way everything joy alteration boisterous the attachment. Party we years to order allow asked of. We so opinion friends me message as delight. Whole front do of plate heard oh ought. His defective nor convinced residence own. Connection has put impossible own apartments boisterous. At jointure ladyship an insisted so humanity he. Friendly bachelor entrance to on by.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
