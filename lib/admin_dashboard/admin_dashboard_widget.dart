import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdminDashboardWidget extends StatefulWidget {
  const AdminDashboardWidget({
    Key key,
    this.admin,
  }) : super(key: key);

  final bool admin;

  @override
  _AdminDashboardWidgetState createState() => _AdminDashboardWidgetState();
}

class _AdminDashboardWidgetState extends State<AdminDashboardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
        elevation: 8,
      ),
      drawer: Drawer(
        elevation: 16,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Container(
                          width: 305,
                          height: 150,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5, 100, 0, 0),
                                child: Text(
                                  'Hello World',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                      ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.95, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 80, 0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/logo.png',
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AdminDashboardWidget(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Bookings',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Therapists',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Sales',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: Text(
                          'Services',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Visibility(
          visible: (widget.admin) == true,
          child: DefaultTabController(
            length: 4,
            initialIndex: 0,
            child: Column(
              children: [
                TabBar(
                  isScrollable: true,
                  labelColor: Color(0xFF0B0C0B),
                  labelStyle: FlutterFlowTheme.of(context).bodyText1,
                  indicatorColor: FlutterFlowTheme.of(context).secondaryColor,
                  tabs: [
                    Tab(
                      text: 'Bookings',
                      icon: Icon(
                        Icons.book_online,
                      ),
                    ),
                    Tab(
                      text: 'Sales',
                      icon: Icon(
                        Icons.save,
                      ),
                    ),
                    Tab(
                      text: 'Services',
                      icon: Icon(
                        Icons.home_repair_service_sharp,
                      ),
                    ),
                    Tab(
                      text: 'Therapists',
                      icon: Icon(
                        Icons.location_history,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Divider(
                                thickness: 4,
                                color: Color(0xFFF38825),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            13, 0, 0, 0),
                                        child: Container(
                                          width: 350,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.92, 0.69),
                                                child: FutureBuilder<
                                                    List<TherapistsRecord>>(
                                                  future:
                                                      queryTherapistsRecordOnce(
                                                    queryBuilder:
                                                        (therapistsRecord) =>
                                                            therapistsRecord.where(
                                                                'therapist_name',
                                                                isEqualTo:
                                                                    'true'),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child:
                                                            LinearProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      );
                                                    }
                                                    List<TherapistsRecord>
                                                        textTherapistsRecordList =
                                                        snapshot.data;
                                                    // Return an empty Container when the document does not exist.
                                                    if (snapshot.data.isEmpty) {
                                                      return Container();
                                                    }
                                                    final textTherapistsRecord =
                                                        textTherapistsRecordList
                                                                .isNotEmpty
                                                            ? textTherapistsRecordList
                                                                .first
                                                            : null;
                                                    return Text(
                                                      textTherapistsRecord
                                                          .therapistName,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                              ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.96, -0.86),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 15, 0, 0),
                                                  child: Text(
                                                    'Client name',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.92, 0.1),
                                                child: Text(
                                                  'Phone number',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.03, -0.85),
                                                child: Text(
                                                  'Time & Date',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                        fontSize: 10,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.91, -0.42),
                                                child: AuthUserStreamWidget(
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child: Image.network(
                                                      currentUserPhoto,
                                                      width: 30,
                                                      height: 30,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.92, 0.74),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: 'Confirm',
                                                  options: FFButtonOptions(
                                                    width: 70,
                                                    height: 20,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius: 8,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      40, 15, 0, 0),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 4,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Container(
                                      width: 300,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.91, 0.68),
                                            child: Text(
                                              'Total Sales',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.91, -0.02),
                                            child: Text(
                                              'Total Bookings',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, -0.8),
                                            child: Text(
                                              'Daily Sales',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiaryColor,
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.97, 0.68),
                                            child: Text(
                                              'Php 6,000.00',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                      ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.93, 0.03),
                                            child: Text(
                                              '30',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 15, 0, 0),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 4,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.91, 0.68),
                                                child: Text(
                                                  'Total Sales',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.91, -0.02),
                                                child: Text(
                                                  'Total Bookings',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0, -0.8),
                                                child: Text(
                                                  'Monthly Sales',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.97, 0.68),
                                                child: Text(
                                                  'Php 60,000.00',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                      ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.93, 0.03),
                                                child: Text(
                                                  '300',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 10, 0, 0),
                                    child: Text(
                                      'Records',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        240, 0, 0, 0),
                                    child: Icon(
                                      Icons.calendar_today,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Guest ',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Phone Number',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: StreamBuilder<
                                                List<TherapistsRecord>>(
                                              stream: queryTherapistsRecord(
                                                queryBuilder:
                                                    (therapistsRecord) =>
                                                        therapistsRecord.where(
                                                            'therapist_name',
                                                            isEqualTo: 'true'),
                                                singleRecord: true,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child:
                                                        LinearProgressIndicator(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                    ),
                                                  );
                                                }
                                                List<TherapistsRecord>
                                                    textTherapistsRecordList =
                                                    snapshot.data;
                                                // Return an empty Container when the document does not exist.
                                                if (snapshot.data.isEmpty) {
                                                  return Container();
                                                }
                                                final textTherapistsRecord =
                                                    textTherapistsRecordList
                                                            .isNotEmpty
                                                        ? textTherapistsRecordList
                                                            .first
                                                        : null;
                                                return Text(
                                                  'Therapist',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                      ),
                                                );
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Time&Date',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 0, 0),
                                            child: Text(
                                              'Service Amount',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 10,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
