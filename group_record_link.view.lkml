view: group_record_link {
  sql_table_name: BluecrestS6020CvstCfdTxnRec.GroupRecordLink ;;

  dimension: group_pk {
    type: string
    sql: ${TABLE}.GroupPk ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: record_pk {
    type: string
    sql: ${TABLE}.RecordPk ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
