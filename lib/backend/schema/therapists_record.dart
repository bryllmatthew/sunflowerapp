import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'therapists_record.g.dart';

abstract class TherapistsRecord
    implements Built<TherapistsRecord, TherapistsRecordBuilder> {
  static Serializer<TherapistsRecord> get serializer =>
      _$therapistsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'therapist_name')
  String get therapistName;

  @nullable
  @BuiltValueField(wireName: 'therapist_photo')
  String get therapistPhoto;

  @nullable
  @BuiltValueField(wireName: 'therapist_Age')
  String get therapistAge;

  @nullable
  @BuiltValueField(wireName: 'therapist_Bio')
  String get therapistBio;

  @nullable
  @BuiltValueField(wireName: 'therapist_Gender')
  String get therapistGender;

  @nullable
  @BuiltValueField(wireName: 'liked_by')
  BuiltList<DocumentReference> get likedBy;

  @nullable
  @BuiltValueField(wireName: 'hourly_rate')
  String get hourlyRate;

  @nullable
  @BuiltValueField(wireName: 'therapist_Loc')
  BuiltList<String> get therapistLoc;

  @nullable
  BuiltList<String> get therapists;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TherapistsRecordBuilder builder) => builder
    ..therapistName = ''
    ..therapistPhoto = ''
    ..therapistAge = ''
    ..therapistBio = ''
    ..therapistGender = ''
    ..likedBy = ListBuilder()
    ..hourlyRate = ''
    ..therapistLoc = ListBuilder()
    ..therapists = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('therapists');

  static Stream<TherapistsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TherapistsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TherapistsRecord._();
  factory TherapistsRecord([void Function(TherapistsRecordBuilder) updates]) =
      _$TherapistsRecord;

  static TherapistsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTherapistsRecordData({
  String therapistName,
  String therapistPhoto,
  String therapistAge,
  String therapistBio,
  String therapistGender,
  String hourlyRate,
}) =>
    serializers.toFirestore(
        TherapistsRecord.serializer,
        TherapistsRecord((t) => t
          ..therapistName = therapistName
          ..therapistPhoto = therapistPhoto
          ..therapistAge = therapistAge
          ..therapistBio = therapistBio
          ..therapistGender = therapistGender
          ..likedBy = null
          ..hourlyRate = hourlyRate
          ..therapistLoc = null
          ..therapists = null));
