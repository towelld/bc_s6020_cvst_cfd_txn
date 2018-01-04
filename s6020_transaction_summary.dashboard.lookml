- dashboard: s6020_transaction_summary
  title: Transaction Summary
  layout: static
  width: 1632
  tile_size: 68
  embed_style:
    background_color: "#ffffff"
    show_title: true
    title_color: "#646569"
    show_filters_bar: true
    tile_background_color: "#ffffff"
    tile_text_color: "#646569"

  filters:
  - name: facing_pb
    type: field_filter
    model: bc_s6020_cvst_cfd_txn
    explore: records
    field: records.facing_pb

  elements:
    - name: break_count_by_age_chart
      title: Break Count by Account by Age
      model: bc_s6020_cvst_cfd_txn
      explore: records
      type: looker_column
      left: 0
      top: 0
      height: 3
      width: 11
      fields: [records.count, records.system, records.age_created]
      pivots: [records.age_created]
      fill_fields: [records.age_created]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.count desc 0, records.age_created]
      limit: 500
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_transaction: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        Below 4 - 0 - records.count: "#92c26e"
        4 to 7 - 1 - records.count: "#eaa153"
        8 to 15 - 2 - records.count: "#df5555"
        16 or Above - 3 - records.count: "#ff0000"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Below
                4, name: Below 4, axisId: records.count}, {id: 4 to 7, name: 4 to 7, axisId: records.count},
            {id: 8 to 15, name: 8 to 15, axisId: records.count}, {id: 16 or Above, name: 16
                or Above, axisId: records.count}]}]


    - name: break_count_by_age_table
      title: Detail
      model: bc_s6020_cvst_cfd_txn
      explore: records
      type: table
      left: 0
      top: 3
      height: 6
      width: 11
      fields: [records.facing_pb, records.age_created, records.count]
      pivots: [records.age_created]
      fill_fields: [records.age_created]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.facing_pb, records.age_created]
      limit: 500
      total: true
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_labels:
        records.facing_pb: Account/PB
        records.count: Count
        records.age_created: Age


    - name: break_value_by_age_chart
      title: Break Value (USD) by Account by Age
      model: bc_s6020_cvst_cfd_txn
      explore: records
      type: looker_column
      left: 12
      top: 0
      height: 3
      width: 11
      fields: [records.system, records.age_created, records.sum_settle_amt_usd]
      pivots: [records.age_created]
      fill_fields: [records.age_created]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.age_created, records.sum_settle_amt_usd desc 0]
      limit: 500
      column_limit: 50
      stacking: ''
      show_value_labels: true
      label_density: 25
      legend_transaction: center
      x_axis_gridlines: false
      y_axis_gridlines: true
      show_view_names: true
      limit_displayed_rows: false
      y_axis_combined: true
      show_y_axis_labels: true
      show_y_axis_ticks: true
      y_axis_tick_density: default
      y_axis_tick_density_custom: 5
      show_x_axis_label: false
      show_x_axis_ticks: false
      x_axis_scale: auto
      y_axis_scale_mode: linear
      ordering: none
      show_null_labels: false
      show_totals_labels: false
      show_silhouette: false
      totals_color: "#808080"
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      enable_conditional_formatting: false
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_colors:
        Below 4 - 0 - records.sum_settle_amt_usd: "#92c26e"
        4 to 7 - 1 - records.sum_settle_amt_usd: "#eaa153"
        8 to 15 - 2 - records.sum_settle_amt_usd: "#df5555"
        16 or Above - 3 - records.sum_settle_amt_usd: "#ff0000"
      y_axes: [{label: '', maxValue: !!null '', minValue: !!null '', orientation: left,
          showLabels: false, showValues: true, tickDensity: default, tickDensityCustom: 5,
          type: linear, unpinAxis: false, valueFormat: !!null '', series: [{id: Below
                4, name: Below 4, axisId: records.sum_settle_amt_usd, __FILE: i6035_cvst_cfd_transaction/s6020_transaction_summary.dashboard.lookml,
              __LINE_NUM: 79}, {id: 4 to 7, name: 4 to 7, axisId: records.sum_settle_amt_usd, __FILE: i6035_cvst_cfd_transaction/s6020_transaction_summary.dashboard.lookml,
              __LINE_NUM: 80}, {id: 8 to 15, name: 8 to 15, axisId: records.sum_settle_amt_usd, __FILE: i6035_cvst_cfd_transaction/s6020_transaction_summary.dashboard.lookml,
              __LINE_NUM: 81}, {id: 16 or Above, name: 16 or Above, axisId: records.sum_settle_amt_usd,
              __FILE: i6035_cvst_cfd_transaction/s6020_transaction_summary.dashboard.lookml,
              __LINE_NUM: 81}], __FILE: i6035_cvst_cfd_transaction/s6020_transaction_summary.dashboard.lookml,
          __LINE_NUM: 77}]


    - name: break_value_by_age_table
      title: Detail
      model: bc_s6020_cvst_cfd_txn
      explore: records
      type: table
      left: 12
      top: 3
      height: 6
      width: 11
      fields: [records.facing_pb, records.age_created, records.sum_settle_amt_usd]
      pivots: [records.age_created]
      fill_fields: [records.age_created]
      filters:
        records.system: Calypso
        records.match_status: Unmatched
      listen:
        facing_pb: records.facing_pb
      sorts: [records.facing_pb, records.age_created]
      limit: 500
      total: true
      show_view_names: false
      show_row_numbers: false
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: gray
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      series_types: {}
      series_labels:
        records.facing_pb: Account/PB
        records.sum_settle_amt_usd: Value (USD)
        records.age_created: Age