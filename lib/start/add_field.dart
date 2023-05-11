import 'package:flutter/material.dart';
import 'package:sas/app_color.dart';

class AddField extends StatelessWidget {
  const AddField({Key? key}) : super(key: key);
  static const String routeName = 'Add Field';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage("images/bg.jpeg"), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "Add Your Field",
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColor.colorGreen,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                height: 150,
                margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.colorGreen),
                child: InkWell(
                  onTap: (){},
                  child: Center(
                    child: Text('Add My Field',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        )
      ],
    );
  }
}
