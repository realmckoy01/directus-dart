// ignore: import_of_legacy_library_into_null_safe
import 'package:dio/dio.dart';
import 'package:directus/src/modules/items/items_handler.dart';

import 'directus_relation.dart';
import 'relation_converter.dart';

class RelationsHandler extends ItemsHandler<DirectusRelation> {
  RelationsHandler({required Dio client})
      : super(
          'directus_relations',
          client: client,
          converter: RelationConverter(),
        );
}
