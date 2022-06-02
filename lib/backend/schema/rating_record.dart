import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rating_record.g.dart';

abstract class RatingRecord
    implements Built<RatingRecord, RatingRecordBuilder> {
  static Serializer<RatingRecord> get serializer => _$ratingRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'star_ratings')
  BuiltList<DocumentReference> get starRatings;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RatingRecordBuilder builder) =>
      builder..starRatings = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rating');

  static Stream<RatingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RatingRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RatingRecord._();
  factory RatingRecord([void Function(RatingRecordBuilder) updates]) =
      _$RatingRecord;

  static RatingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRatingRecordData() => serializers.toFirestore(
    RatingRecord.serializer, RatingRecord((r) => r..starRatings = null));
