import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'purchase_price_updater_widget.dart' show PurchasePriceUpdaterWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PurchasePriceUpdaterModel
    extends FlutterFlowModel<PurchasePriceUpdaterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for purchasePrice widget.
  FocusNode? purchasePriceFocusNode;
  TextEditingController? purchasePriceController;
  String? Function(BuildContext, String?)? purchasePriceControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    purchasePriceFocusNode?.dispose();
    purchasePriceController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
