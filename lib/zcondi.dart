import 'package:get/get.dart';

class model extends GetxController
{
      RxBool check1=false.obs;
      RxBool check2=false.obs;
      RxBool check3=false.obs;
      RxInt ans=0.obs;
      void checm1(bool? val1)
      {
        check1.value=val1!;

        if(check1.isTrue)
              {
                    ans=ans+50;
              }
        else
              {
                    ans=ans-50;
              }

      }
      void checm2(bool? val2)
      {
            check2.value=val2!;
            if(check2.isTrue)
            {
                  ans=ans+60;
            }
            else
            {
                  ans=ans-60;
            }
      }
      void checm3(bool? val3)
      {
            check3.value=val3!;
            if(check3.isTrue)
            {
                  ans=ans+400;
            }
            else
            {
                  ans=ans-400;
            }
      }


}