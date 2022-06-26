import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionWidget extends StatefulWidget {
  const OptionWidget({Key key}) : super(key: key);

  @override
  _OptionWidgetState createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  bool checkboxListTileValue;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Theme(
          data: ThemeData(
            unselectedWidgetColor: Color(0xFF707070),
          ),
          child: CheckboxListTile(
            value: checkboxListTileValue ??= true,
            onChanged: (newValue) =>
                setState(() => checkboxListTileValue = newValue),
            title: Text(
              'Title',
              style: FlutterFlowTheme.of(context).title3,
            ),
            subtitle: Text(
              'Subtitle',
              style: FlutterFlowTheme.of(context).subtitle2,
            ),
            tileColor: Color(0xFFF5F5F5),
            dense: false,
            controlAffinity: ListTileControlAffinity.trailing,
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0.55),
          child: FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Continue Booking',
            options: FFButtonOptions(
              width: 200,
              height: 40,
              color: FlutterFlowTheme.of(context).secondaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 12,
            ),
          ),
        ),
      ],
    );
  }
}
