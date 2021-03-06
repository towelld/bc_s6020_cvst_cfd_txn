view: record_history {
  sql_table_name: BluecrestS6020CvstCfdTxnRec.RecordHistory ;;

  dimension: acc_code {
    type: string
    sql: ${TABLE}.AccCode ;;
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: allow_purge {
    type: string
    sql: ${TABLE}.AllowPurge ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: audit_pk {
    type: string
    sql: ${TABLE}.AuditPk ;;
  }

  dimension: bloomberg_id {
    type: string
    sql: ${TABLE}.BloombergId ;;
  }

  dimension: bracket_quantity {
    type: string
    sql: ${TABLE}.BracketQuantity ;;
  }

  dimension: bracket_settle_amt {
    type: string
    sql: ${TABLE}.BracketSettleAmt ;;
  }

  dimension: business_key {
    type: string
    sql: ${TABLE}.Business_Key ;;
  }

  dimension: businesskey {
    type: string
    sql: ${TABLE}.BusinessKey ;;
  }

  dimension: buy_sell {
    type: string
    sql: ${TABLE}.BuySell ;;
  }

  dimension: buy_sell_indicator {
    type: string
    sql: ${TABLE}.BuySellIndicator ;;
  }

  dimension: ccy {
    type: string
    sql: ${TABLE}.Ccy ;;
  }

  dimension: date_time_created {
    type: string
    sql: ${TABLE}.DateTimeCreated ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: desk {
    type: string
    sql: ${TABLE}.Desk ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: eb {
    type: string
    sql: ${TABLE}.EB ;;
  }

  dimension: facing_pb {
    type: string
    sql: ${TABLE}.FacingPB ;;
  }

  dimension: file_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.FileId ;;
  }

  dimension: gross_price {
    type: number
    sql: ${TABLE}.GrossPrice ;;
  }

  dimension: has_comments {
    type: string
    sql: ${TABLE}.HasComments ;;
  }

  dimension: history_pk {
    type: string
    sql: ${TABLE}.HistoryPk ;;
  }

  dimension: history_type {
    type: number
    sql: ${TABLE}.HistoryType ;;
  }

  dimension_group: import {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ImportDate ;;
  }

  dimension: instrument_type {
    type: string
    sql: ${TABLE}.InstrumentType ;;
  }

  dimension: isin {
    type: string
    sql: ${TABLE}.ISIN ;;
  }

  dimension: last_action_by {
    type: string
    sql: ${TABLE}.LastActionBy ;;
  }

  dimension: last_action_date {
    type: string
    sql: ${TABLE}.LastActionDate ;;
  }

  dimension: last_action_id {
    type: number
    sql: ${TABLE}.LastActionId ;;
  }

  dimension: last_action_type {
    type: number
    sql: ${TABLE}.LastActionType ;;
  }

  dimension: last_updated {
    type: string
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: latest_comment {
    type: string
    sql: ${TABLE}.LatestComment ;;
  }

  dimension: multiplier {
    type: string
    sql: ${TABLE}.Multiplier ;;
  }

  dimension: net_price {
    type: number
    sql: ${TABLE}.NetPrice ;;
  }

  dimension: op_type {
    type: string
    sql: ${TABLE}.OpType ;;
  }

  dimension: orig_acc_code {
    type: string
    sql: ${TABLE}.OrigAccCode ;;
  }

  dimension: orig_buy_sell {
    type: string
    sql: ${TABLE}.OrigBuySell ;;
  }

  dimension: orig_gross_price {
    type: number
    sql: ${TABLE}.OrigGrossPrice ;;
  }

  dimension: orig_multiplier {
    type: string
    sql: ${TABLE}.OrigMultiplier ;;
  }

  dimension: orig_net_price {
    type: number
    sql: ${TABLE}.OrigNetPrice ;;
  }

  dimension: orig_op_type {
    type: string
    sql: ${TABLE}.OrigOpType ;;
  }

  dimension: orig_quantity {
    type: string
    sql: ${TABLE}.OrigQuantity ;;
  }

  dimension: orig_settle_amt {
    type: string
    sql: ${TABLE}.OrigSettleAmt ;;
  }

  dimension: orig_settle_price {
    type: number
    sql: ${TABLE}.OrigSettlePrice ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: product_desc {
    type: string
    sql: ${TABLE}.ProductDesc ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: sccy {
    type: string
    sql: ${TABLE}.SCcy ;;
  }

  dimension: settle_amt {
    type: number
    sql: ${TABLE}.SettleAmt ;;
  }

  dimension: settle_amt_money {
    type: number
    sql: ${TABLE}.SettleAmtMoney ;;
  }

  dimension: settle_amt_money_currency {
    type: string
    sql: ${TABLE}.SettleAmtMoneyCurrency ;;
  }

  dimension_group: settle {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SettleDate ;;
  }

  dimension: settle_price {
    type: number
    sql: ${TABLE}.SettlePrice ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension: strategy {
    type: string
    sql: ${TABLE}.Strategy ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.System ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  dimension_group: trade {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TradeDate ;;
  }

  dimension: trade_ref {
    type: string
    sql: ${TABLE}.TradeRef ;;
  }

  dimension: trailer {
    type: string
    sql: ${TABLE}.Trailer ;;
  }

  dimension: tran_id {
    type: string
    sql: ${TABLE}.tran_id ;;
  }

  dimension: transaction_status {
    type: number
    sql: ${TABLE}.TransactionStatus ;;
  }

  dimension: ultimate_parent_pk {
    type: string
    sql: ${TABLE}.UltimateParentPk ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}.UniqueId ;;
  }

  dimension: uti {
    type: string
    sql: ${TABLE}.UTI ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.Version ;;
  }

  dimension: version_no {
    type: number
    sql: ${TABLE}.VersionNo ;;
  }

  measure: count {
    type: count
    drill_fields: [files.id, files.file_name]
  }
}
