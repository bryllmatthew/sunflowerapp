import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../registerconfirm/registerconfirm_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController confirmPasswordController;
  bool confirmPasswordVisibility;
  TextEditingController emailController;
  TextEditingController nameController;
  TextEditingController phoneNumberController;
  TextEditingController passwordController;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordController = TextEditingController();
    confirmPasswordVisibility = false;
    emailController = TextEditingController();
    nameController = TextEditingController();
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF262D34),
      body: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFF262D34),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/BACKGROUND_screen_(1).jpg',
              ).image,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional(0, 0.35),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, -0.05),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 190,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/background.jpg',
                      ).image,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Text(
                                'Sign up',
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: TextFormField(
                          controller: emailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0x7AFFFFFF),
                                  ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Field is required';
                            }

                            return null;
                          },
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 10, 20, 10),
                              child: TextFormField(
                                controller: nameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Name',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x7AFFFFFF),
                                    ),
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                              child: TextFormField(
                                controller: phoneNumberController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Phone number',
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryColor,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0x7AFFFFFF),
                                    ),
                                keyboardType: TextInputType.phone,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return 'Field is required';
                                  }

                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: !passwordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: 'Password',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => passwordVisibility = !passwordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                passwordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0x73FFFFFF),
                                size: 15,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0x7AFFFFFF),
                                    fontWeight: FontWeight.w500,
                                  ),
                          keyboardType: TextInputType.visiblePassword,
                          validator: (val) {
                            if (val == null || val.isEmpty) {
                              return 'Field is required';
                            }

                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                        child: TextFormField(
                          controller: confirmPasswordController,
                          obscureText: !confirmPasswordVisibility,
                          decoration: InputDecoration(
                            labelText: 'Confim Password',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                                FlutterFlowTheme.of(context).secondaryColor,
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => confirmPasswordVisibility =
                                    !confirmPasswordVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                confirmPasswordVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0x73FFFFFF),
                                size: 15,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0x7AFFFFFF),
                                    fontWeight: FontWeight.w500,
                                  ),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (passwordController?.text !=
                                confirmPasswordController?.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Passwords don\'t match!',
                                  ),
                                ),
                              );
                              return;
                            }

                            final user = await createAccountWithEmail(
                              context,
                              emailController.text,
                              passwordController.text,
                            );
                            if (user == null) {
                              return;
                            }

                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterconfirmWidget(),
                              ),
                            );
                            Navigator.pop(context);
                          },
                          text: 'Create Account',
                          options: FFButtonOptions(
                            width: 150,
                            height: 40,
                            color: Color(0xFF299339),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
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
