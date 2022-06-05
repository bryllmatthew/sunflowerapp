import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingConfirmationWidget extends StatefulWidget {
  const BookingConfirmationWidget({Key key}) : super(key: key);

  @override
  _BookingConfirmationWidgetState createState() =>
      _BookingConfirmationWidgetState();
}

class _BookingConfirmationWidgetState extends State<BookingConfirmationWidget> {
  bool switchListTileValue1;
  double ratingBarValue;
  bool switchListTileValue2;
  bool switchListTileValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0x3A000000),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            buttonSize: 46,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                          child: Text(
                            'Book Now',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: Color(0xFF090F13),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AuthUserStreamWidget(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.asset(
                              'assets/images/pexels-joe-alexander-2702692.jpg',
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Therapist name',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF090F13),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RatingBar.builder(
                          onRatingUpdate: (newValue) =>
                              setState(() => ratingBarValue = newValue),
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                          direction: Axis.horizontal,
                          initialRating: ratingBarValue ??= 3,
                          unratedColor: Color(0xFF9E9E9E),
                          itemCount: 5,
                          itemSize: 20,
                          glowColor: FlutterFlowTheme.of(context).primaryColor,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Choose an Option',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF090F13),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SwitchListTile(
                    value: switchListTileValue1 ??= false,
                    onChanged: (newValue) =>
                        setState(() => switchListTileValue1 = newValue),
                    title: Text(
                      'Hot Stone',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                    ),
                    subtitle: Text(
                      'Php 150.00',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    activeColor: FlutterFlowTheme.of(context).secondaryColor,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  SwitchListTile(
                    value: switchListTileValue2 ??= true,
                    onChanged: (newValue) =>
                        setState(() => switchListTileValue2 = newValue),
                    title: Text(
                      'Ventosa',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                    ),
                    subtitle: Text(
                      'Php 150.00',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    activeColor: FlutterFlowTheme.of(context).secondaryColor,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  SwitchListTile(
                    value: switchListTileValue3 ??= false,
                    onChanged: (newValue) =>
                        setState(() => switchListTileValue3 = newValue),
                    title: Text(
                      'Ear Candle',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                    ),
                    subtitle: Text(
                      'Php 150.00',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                          ),
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    activeColor: FlutterFlowTheme.of(context).secondaryColor,
                    dense: false,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Main Service',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Text(
                          'Php 500.00',
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF151B1E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add-ons',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Text(
                          'Php 150.00',
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF151B1E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Home Service Fee',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Text(
                          'Php 100.00',
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF151B1E),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF8B97A2),
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                        Text(
                          'Php 750.00',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF090F13),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x55000000),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 34),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Book Now',
                options: FFButtonOptions(
                  width: 130,
                  height: 60,
                  color: FlutterFlowTheme.of(context).secondaryColor,
                  textStyle: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
