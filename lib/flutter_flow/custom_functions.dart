import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

int? newCustomFunction(DateTime? timestamp) {
  // firebase Timestamp to epoch timestamp converter
  if (timestamp != null) {
    return ((timestamp.millisecondsSinceEpoch).floor());
  } else {
    return null;
  }
}

List<ConsoldatedPackageStruct> newCustomFunction2(
    List<PackagesRecord> listOfPackages) {
  // return list of products with combined quantity
  List<ConsoldatedPackageStruct> consolidatedList = [];

  for (PackagesRecord package in listOfPackages) {
    bool found = false;
    for (ConsoldatedPackageStruct consolidatedPackage in consolidatedList) {
      if (consolidatedPackage.productName == package.productName) {
        consolidatedPackage.quantity += package.quantity;
        found = true;
        break;
      }
    }
    if (!found) {
      consolidatedList.add(ConsoldatedPackageStruct(
          productName: package.productName,
          productId: package.productId,
          quantity: package.quantity,
          unit: package.unit));
    }
  }

  return consolidatedList;
}
