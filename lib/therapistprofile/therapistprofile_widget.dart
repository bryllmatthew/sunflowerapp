import '../components/bookingconfirmation_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class TherapistprofileWidget extends StatefulWidget {
  const TherapistprofileWidget({Key key}) : super(key: key);

  @override
  _TherapistprofileWidgetState createState() => _TherapistprofileWidgetState();
}

class _TherapistprofileWidgetState extends State<TherapistprofileWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 48,
          icon: Icon(
            Icons.chevron_left_rounded,
            color: Color(0xFF95A1AC),
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Back to the lists',
          style: FlutterFlowTheme.of(context).bodyText2.override(
                fontFamily: 'Lexend Deca',
                color: Color(0xFF0F0E0E),
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.94,
                    height: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 6,
                          color: Color(0x3E000000),
                          offset: Offset(0, 2),
                        )
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/pexels-joe-alexander-2702692.jpg',
                        width: MediaQuery.of(context).size.width * 0.96,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            RatingBarIndicator(
              itemBuilder: (context, index) => Icon(
                Icons.star_rounded,
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
              direction: Axis.horizontal,
              rating: 3,
              unratedColor: Color(0xFF9E9E9E),
              itemCount: 5,
              itemSize: 40,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Text(
                      'Therapist name',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF0F0E0E),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  ToggleIcon(
                    onPressed: () async {
                      setState(() =>
                          FFAppState().favourite = !FFAppState().favourite);
                    },
                    value: FFAppState().favourite,
                    onIcon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 25,
                    ),
                    offIcon: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.9, 0),
              child: Text(
                'Location',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Age',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF8B97A2),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  Text(
                    '600-700/Hour',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).secondaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Hi my name is Jane, and I\'ve been a massage therapist for 5 years now. I can do any type massage, and willing to go extral mile :D',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF0F0E0E),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            lineHeight: 10,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 24, 16, 40),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            child: BookingconfirmationWidget(),
                          );
                        },
                      );
                    },
                    text: 'Book now',
                    options: FFButtonOptions(
                      width: 170,
                      height: 50,
                      color: FlutterFlowTheme.of(context).secondaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                      elevation: 3,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
