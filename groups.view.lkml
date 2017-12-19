view: groups {
  sql_table_name: BluecrestS6020CvstCfdTxnRec.Groups ;;

  dimension: acc_code {
    type: string
    sql: ${TABLE}.AccCode ;;
  }

  dimension: active_status {
    type: number
    sql: ${TABLE}.ActiveStatus ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.AssignedTo ;;
  }

  dimension: buy_sell {
    type: string
    sql: ${TABLE}.BuySell ;;
  }

  dimension: confidence {
    type: string
    sql: ${TABLE}.Confidence ;;
  }

  dimension: date_time_stamp {
    type: string
    sql: ${TABLE}.DateTimeStamp ;;
  }

  dimension: do_not_purge_before {
    type: string
    sql: ${TABLE}.DoNotPurgeBefore ;;
  }

  dimension: facing_pb {
    type: string
    sql: ${TABLE}.FacingPB ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}.GroupName ;;
  }

  dimension: isin {
    type: string
    sql: ${TABLE}.ISIN ;;
  }

  dimension: match_name {
    type: string
    sql: ${TABLE}.MatchName ;;
  }

  dimension: match_status {
    type: number
    sql: ${TABLE}.MatchStatus ;;
  }

  dimension: net_quantity {
    type: number
    sql: ${TABLE}.NetQuantity ;;
  }

  dimension: net_settle_amt {
    type: number
    sql: ${TABLE}.NetSettleAmt ;;
  }

  dimension: net_settle_amt_usd {
    type: number
    sql: ${TABLE}.NetSettleAmtUSD ;;
  }

  dimension: net_settle_amt_usdcurrency {
    type: string
    sql: ${TABLE}.NetSettleAmtUSDCurrency ;;
  }

  dimension: num_recs {
    type: number
    sql: ${TABLE}.NumRecs ;;
  }

  dimension: pk {
    type: string
    sql: ${TABLE}.Pk ;;
  }

  dimension: sccy {
    type: string
    sql: ${TABLE}.SCcy ;;
  }

  dimension: time_stamp_zone_id {
    type: number
    sql: ${TABLE}.TimeStampZoneId ;;
  }

  dimension: trade_date {
    type: string
    sql: ${TABLE}.TradeDate ;;
  }

  measure: count {
    type: count
    drill_fields: [group_name, match_name]
  }
}
