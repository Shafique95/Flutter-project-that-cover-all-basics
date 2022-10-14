import 'package:flutter/material.dart';
import 'package:flutterbasi/add_widget_dynamicly_when_a_buttonclick/add_a%20formfield_widget_when_buttonclick.dart';
import 'package:flutterbasi/add_widget_dynamicly_when_a_buttonclick/add_widget_when_buttonclick.dart';
import 'package:flutterbasi/custom_text_field/custom_form.dart';
import 'package:flutterbasi/custom_widget/custom_container.dart';
import 'package:flutterbasi/custom_widget/custom_dropdown.dart';
import 'package:flutterbasi/ebs_website_pagedesign/crm-add_Contactinfo_page_design.dart';
import 'package:flutterbasi/ebs_website_pagedesign/otpCheckPage.dart';
import 'package:flutterbasi/flutter_data_table/flutter_datatable_learning.dart';
import 'package:flutterbasi/flutter_rest_api/get_data_view.dart';
import 'package:flutterbasi/flutter_restful_api/get_value_from_api.dart';
import 'package:flutterbasi/form_with_validate/validate_form.dart';
import 'package:flutterbasi/test_custom_widget/test_custom_widget.dart';
import 'package:flutterbasi/using_shared_preferences/learn_shared_preferences.dart';

import '../create_auto_generate_textfield/create_textField_by_input_fixed_number.dart';

import '../create_auto_generate_textfield_using_getx/create_autogenerate_textfield_and_calculate_sum.dart';
import '../ebs_website_pagedesign/crm_contact_page.dart';
import '../ebs_website_pagedesign/ebs_activelogpage_element_design.dart';
import '../ebs_website_pagedesign/ebs_calender_picker.dart';
import '../flutter_rest_api_with_springboot/get_data_view.dart';
import '../fluttertable/flutter_bale.dart';
import '../gridviewWithBuilder/gridViewWithBuilder.dart';
import '../layout_builder/layoutBuilder.dart';
import '../streamExample/streamDemo.dart';
import '../test_widget_for_Using.dart';
import '../using_flutter_stack/stack_learning.dart';

class GridViewLearn extends StatelessWidget {
  const GridViewLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomForm(),
                    ),
                  );
                },
                child: Text("CustomForm"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GridViewWithBuilder(),
                    ),
                  );
                },
                child: Text("GridView.Builder"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ValidateForm(),
                    ),
                  );
                },
                child: const Text("Validate Form "),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LearnSharedPrefernces(),
                    ),
                  );
                },
                child: const Text("Go to Shared Prefereces"),
              ),
            ),
            Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TestCustomWidget(),
                      ),
                    );
                  },
                  child: const Text("Test Custom Widet"),
                )),
            Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LearnDropDownButton(),
                      ),
                    );
                  },
                  child: const Text("DropdownButton"),
                )),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CrmContactPage(),
                    ),
                  );
                },
                child: const Text("ebsCrmContactPageDesign"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => FlutterTable(),
                    ),
                  );
                },
                child: const Text("Flutter Table "),
              ),
            ),
            CustomContainer(
              color: Colors.red,
              containerWidth: 150,
              containerHeight: 200,
              containerChild: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const LearnDataTable(),
                    ),
                  );
                },
                child: const Text("Flutter DataTable"),
              ),
            ),
            CustomContainer(
              color: Colors.red,
              containerWidth: 150,
              containerHeight: 200,
              containerChild: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AddInfoPageDesign(),
                    ),
                  );
                },
                child: const Text("Add Info Page Design"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GetRestValue(),
                  ),
                );
              },
              child: const Text("Rest Api"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AddWidgetDynamicly2(),
                  ),
                );
              },
              child: const Text("Add widget Dynamically"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const EbsActiveLogElementCreate(),
                  ),
                );
              },
              child: const Text("EbsActiveLogElementCreate"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const EbsDatePicker(),
                  ),
                );
              },
              child: const Text("EbsDatePicker"),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CheckOTP(),
                    ),
                  );
                },
                child: Text(" OTP check ")),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GetDataView(),
                  ),
                );
              },
              child: Text(" Get Rest Api Data"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GetDataView2(),
                  ),
                );
              },
              child: Text(" Get Rest Api Data from spring Boot"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => TestingPurpose(),
                  ),
                );
              },
              child: Text("TestingPurpose"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MyStatelessWidget(),
                  ),
                );
              },
              child: Text("LayoutBuilder"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => StackAndPositionedDemo(),
                  ),
                );
              },
              child: Text("Stack Example"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CreateTextFieldByInputFixednumber(),
                  ),
                );
              },
              child: const Text("CreateTextFieldByInputFixednumber"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CalculateSumOfAutogenerateTextFieldByGetX(),
                  ),
                );
              },
              child: Text("CalculateSumOfAutogenerateTextFieldByGetX"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const StreamDemo(),
                  ),
                );
              },
              child: const Text("StreamDemo"),
            ),
          ],
        ),
      ),
    );
  }
}
