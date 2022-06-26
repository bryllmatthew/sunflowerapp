import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressWidget extends StatefulWidget {
  const ProgressWidget({
    Key key,
    this.progressbar,
  }) : super(key: key);

  final double progressbar;

  @override
  _ProgressWidgetState createState() => _ProgressWidgetState();
}

class _ProgressWidgetState extends State<ProgressWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          color: Colors.transparent,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            width: 300,
            height: 20,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryColor,
              boxShadow: [
                BoxShadow(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  spreadRadius: 1,
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        Container(
          width: widget.progressbar,
          height: 20,
          decoration: BoxDecoration(
            color: Color(0xFF0F0E0E),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
