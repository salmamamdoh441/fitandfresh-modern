import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextField extends StatefulWidget {

  String name;
  String hint;
  var iconData;
  CustomTextField({required this.name,required this.hint,this.iconData});





  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();

}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(height: 5.0,),
          Container(
            // height: 65.h,
            // width: 150.w,
            height: 100.0,
            width: double.infinity,
            child: TextFormField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width:3.0),
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: widget.hint,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    widget.iconData,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
