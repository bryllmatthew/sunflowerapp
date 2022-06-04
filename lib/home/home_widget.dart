import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../guestprofile/guestprofile_widget.dart';
import '../therapists/therapists_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFEEEEEE),
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Stack(
                    children: [
                      Wrap(
                        spacing: 0,
                        runSpacing: 0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -0.86),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 0, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  GuestprofileWidget(),
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.menu,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          260, 0, 0, 0),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/images/118828519_666199130657961_5472947144463591737_n.jpg',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 20, 0, 0),
                                    child: Text(
                                      'Good\nMorning!',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Merriweather',
                                            fontSize: 30,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.85, -0.05),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Text(
                                    'Sunflower Massage',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 11,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 100,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 30, 20, 0),
                                  child: StreamBuilder<List<TherapistsRecord>>(
                                    stream: queryTherapistsRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: LinearProgressIndicator(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                        );
                                      }
                                      List<TherapistsRecord>
                                          textFieldTherapistsRecordList =
                                          snapshot.data;
                                      // Return an empty Container when the document does not exist.
                                      if (snapshot.data.isEmpty) {
                                        return Container();
                                      }
                                      final textFieldTherapistsRecord =
                                          textFieldTherapistsRecordList
                                                  .isNotEmpty
                                              ? textFieldTherapistsRecordList
                                                  .first
                                              : null;
                                      return TextFormField(
                                        controller: textController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'textController',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          hintText: 'Search',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x1C1A1A1A),
                                              width: 8,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x1C1A1A1A),
                                              width: 8,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(22),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                          suffixIcon: Icon(
                                            Icons.search_sharp,
                                            color: Color(0xFFEDA115),
                                            size: 22,
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 240, 0),
                                child: Text(
                                  'Categories',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(),
                                child: Align(
                                  alignment: AlignmentDirectional(-0.15, -0.6),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 2, 0, 0),
                                    child: Stack(
                                      children: [
                                        DefaultTabController(
                                          length: 3,
                                          initialIndex: 0,
                                          child: Column(
                                            children: [
                                              TabBar(
                                                labelColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12,
                                                        ),
                                                indicatorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                tabs: [
                                                  Tab(
                                                    text: 'Swedish',
                                                  ),
                                                  Tab(
                                                    text: 'Shaitsu',
                                                  ),
                                                  Tab(
                                                    text: 'Combination',
                                                  ),
                                                ],
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30, 0, 0, 0),
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 150,
                                                            height: 150,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiaryColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.06,
                                                                          0.83),
                                                                  child: Text(
                                                                    'Happy Hour',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/swedish.jpg',
                                                                      width:
                                                                          150,
                                                                      height:
                                                                          110,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.67, 0),
                                                            child: Container(
                                                              width: 150,
                                                              height: 150,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16),
                                                              ),
                                                              child: Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -0.06,
                                                                            0.83),
                                                                    child: Text(
                                                                      'With stone',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            -1),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/massage.png',
                                                                        width:
                                                                            150,
                                                                        height:
                                                                            110,
                                                                        fit: BoxFit
                                                                            .cover,
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30, 0, 0, 0),
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 150,
                                                            height: 150,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiaryColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.06,
                                                                          0.83),
                                                                  child: Text(
                                                                    'Happy Hour',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/swedish.jpg',
                                                                      width:
                                                                          150,
                                                                      height:
                                                                          110,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.67, 0),
                                                            child: Container(
                                                              width: 150,
                                                              height: 150,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16),
                                                              ),
                                                              child: Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -0.06,
                                                                            0.83),
                                                                    child: Text(
                                                                      'With stone',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            -1),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/massage.png',
                                                                        width:
                                                                            150,
                                                                        height:
                                                                            110,
                                                                        fit: BoxFit
                                                                            .cover,
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  30, 0, 0, 0),
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                            width: 150,
                                                            height: 150,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiaryColor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -0.06,
                                                                          0.83),
                                                                  child: Text(
                                                                    'Happy Hour',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            16),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/swedish.jpg',
                                                                      width:
                                                                          150,
                                                                      height:
                                                                          110,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.67, 0),
                                                            child: Container(
                                                              width: 150,
                                                              height: 150,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryColor,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            16),
                                                              ),
                                                              child: Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -0.06,
                                                                            0.83),
                                                                    child: Text(
                                                                      'With stone',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0,
                                                                            -1),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/massage.png',
                                                                        width:
                                                                            150,
                                                                        height:
                                                                            110,
                                                                        fit: BoxFit
                                                                            .cover,
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 30, 0, 0),
                                    child: Text(
                                      'Featured Masseuse',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        140, 30, 0, 0),
                                    child: InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                TherapistsWidget(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'See all',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 0),
                                      child:
                                          StreamBuilder<List<TherapistsRecord>>(
                                        stream: queryTherapistsRecord(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: LinearProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            );
                                          }
                                          List<TherapistsRecord>
                                              listViewTherapistsRecordList =
                                              snapshot.data;
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewTherapistsRecordList
                                                    .length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewTherapistsRecord =
                                                  listViewTherapistsRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: StreamBuilder<
                                                      List<TherapistsRecord>>(
                                                    stream:
                                                        queryTherapistsRecord(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                          stackTherapistsRecordList =
                                                          snapshot.data;
                                                      // Return an empty Container when the document does not exist.
                                                      if (snapshot
                                                          .data.isEmpty) {
                                                        return Container();
                                                      }
                                                      final stackTherapistsRecord =
                                                          stackTherapistsRecordList
                                                                  .isNotEmpty
                                                              ? stackTherapistsRecordList
                                                                  .first
                                                              : null;
                                                      return Stack(
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1, 0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          16),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/pexels-joe-alexander-2702692.jpg',
                                                                width: 100,
                                                                height: 100,
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.08,
                                                                    -0.38),
                                                            child: Text(
                                                              stackTherapistsRecord
                                                                  .therapistAge,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.02,
                                                                    -0.85),
                                                            child: StreamBuilder<
                                                                List<
                                                                    TherapistsRecord>>(
                                                              stream:
                                                                  queryTherapistsRecord(
                                                                singleRecord:
                                                                    true,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        LinearProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  );
                                                                }
                                                                List<TherapistsRecord>
                                                                    textTherapistsRecordList =
                                                                    snapshot
                                                                        .data;
                                                                // Return an empty Container when the document does not exist.
                                                                if (snapshot
                                                                    .data
                                                                    .isEmpty) {
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
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.01,
                                                                    0.19),
                                                            child: StreamBuilder<
                                                                List<
                                                                    TherapistsRecord>>(
                                                              stream:
                                                                  queryTherapistsRecord(
                                                                singleRecord:
                                                                    true,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        LinearProgressIndicator(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryColor,
                                                                    ),
                                                                  );
                                                                }
                                                                List<TherapistsRecord>
                                                                    textTherapistsRecordList =
                                                                    snapshot
                                                                        .data;
                                                                // Return an empty Container when the document does not exist.
                                                                if (snapshot
                                                                    .data
                                                                    .isEmpty) {
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
                                                                      .therapistLoc
                                                                      .toList()
                                                                      .length
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
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
          ],
        ),
      ),
    );
  }
}
