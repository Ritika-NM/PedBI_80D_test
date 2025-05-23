view: attendance_summary {
  sql_table_name: stars.attendance_summary ;;

  dimension: chronic_absentee {
    type: number
    sql: ${TABLE}.Chronic_Absentee ;;
  }

  dimension: student_key {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Key ;;
  }


  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Code ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension_group: school_year {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.School_Year ;;
  }

  dimension: student_id {
    type: number
    hidden: yes
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: tier1_absentee {
    type: number
    sql: ${TABLE}.Tier1Absentee ;;
  }

  dimension: tier2_absentee {
    type: number
    sql: ${TABLE}.Tier2Absentee ;;
  }

  dimension: tier3_absentee {
    type: number
    sql: ${TABLE}.Tier3Absentee ;;
  }

  dimension: tier4_absentee {
    type: number
    sql: ${TABLE}.Tier4Absentee ;;
  }

  measure: total_days_enrolled {
    type: sum
    label: "Days Enrolled"
    sql: ${TABLE}.Total_Days_Enrolled ;;
  }

  measure: total_days_present {
    type: sum
    label: "Days Present"
    sql: ${TABLE}.Total_Days_Present ;;
  }

  dimension: total_days_unexcused_absent {
    type: number
    sql: ${TABLE}.Total_Days_Unexcused_Absent ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
