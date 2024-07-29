view: vm_educ {
  sql_table_name: `jutomate-lamas-english.MODELLING.vm_educ` ;;

  dimension: acadm12_cert_pcnt {
    type: number
    sql: ${TABLE}.Acadm12Cert_pcnt ;;
  }
  dimension: acadm1_cert_pcnt {
    type: number
    sql: ${TABLE}.Acadm1Cert_pcnt ;;
  }
  dimension: acadm2_cert_pcnt {
    type: number
    sql: ${TABLE}.Acadm2Cert_pcnt ;;
  }
  dimension: acadm_cert_pcnt {
    type: number
    sql: ${TABLE}.AcadmCert_pcnt ;;
  }
  dimension: educ12_pcnt {
    type: number
    sql: ${TABLE}.educ12_pcnt ;;
  }
  dimension: educ13_15_pcnt {
    type: number
    sql: ${TABLE}.educ13_15_pcnt ;;
  }
  dimension: educ13_pcnt {
    type: number
    sql: ${TABLE}.educ13_pcnt ;;
  }
  dimension: educ16_pcnt {
    type: number
    sql: ${TABLE}.educ16_pcnt ;;
  }
  dimension: educ8_pcnt {
    type: number
    sql: ${TABLE}.educ8_pcnt ;;
  }
  dimension: educ9_12_pcnt {
    type: number
    sql: ${TABLE}.educ9_12_pcnt ;;
  }
  dimension: m_acadm1_cert_pcnt {
    type: number
    sql: ${TABLE}.m_Acadm1Cert_pcnt ;;
  }
  dimension: m_acadm2_cert_pcnt {
    type: number
    sql: ${TABLE}.m_Acadm2Cert_pcnt ;;
  }
  dimension: m_acadm_cert_pcnt {
    type: number
    sql: ${TABLE}.m_AcadmCert_pcnt ;;
  }
  dimension: m_educ12_pcnt {
    type: number
    sql: ${TABLE}.m_educ12_pcnt ;;
  }
  dimension: m_educ13_15_pcnt {
    type: number
    sql: ${TABLE}.m_educ13_15_pcnt ;;
  }
  dimension: m_educ13_pcnt {
    type: number
    sql: ${TABLE}.m_educ13_pcnt ;;
  }
  dimension: m_educ16_pcnt {
    type: number
    sql: ${TABLE}.m_educ16_pcnt ;;
  }
  dimension: m_educ8_pcnt {
    type: number
    sql: ${TABLE}.m_educ8_pcnt ;;
  }
  dimension: m_educ9_12_pcnt {
    type: number
    sql: ${TABLE}.m_educ9_12_pcnt ;;
  }
  dimension: m_matric_cert_pcnt {
    type: number
    sql: ${TABLE}.m_MatricCert_pcnt ;;
  }
  dimension: m_other_cert_a_pcnt {
    type: number
    sql: ${TABLE}.m_OtherCertA_pcnt ;;
  }
  dimension: m_other_cert_b_pcnt {
    type: number
    sql: ${TABLE}.m_OtherCertB_pcnt ;;
  }
  dimension: m_post_secondary_cert_pcnt {
    type: number
    sql: ${TABLE}.m_PostSecondaryCert_pcnt ;;
  }
  dimension: m_secondary_cert_pcnt {
    type: number
    sql: ${TABLE}.m_SecondaryCert_pcnt ;;
  }
  dimension: matric_cert_pcnt {
    type: number
    sql: ${TABLE}.MatricCert_pcnt ;;
  }
  dimension: other_cert_a_pcnt {
    type: number
    sql: ${TABLE}.OtherCertA_pcnt ;;
  }
  dimension: other_cert_b_pcnt {
    type: number
    sql: ${TABLE}.OtherCertB_pcnt ;;
  }
  dimension: post_secondary_cert_pcnt {
    type: number
    sql: ${TABLE}.PostSecondaryCert_pcnt ;;
  }
  dimension: secondary_cert_pcnt {
    type: number
    sql: ${TABLE}.SecondaryCert_pcnt ;;
  }
  dimension: shape_name {
    type: string
    sql: ${TABLE}.shape_name ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: w_acadm1_cert_pcnt {
    type: number
    sql: ${TABLE}.w_Acadm1Cert_pcnt ;;
  }
  dimension: w_acadm2_cert_pcnt {
    type: number
    sql: ${TABLE}.w_Acadm2Cert_pcnt ;;
  }
  dimension: w_acadm_cert_pcnt {
    type: number
    sql: ${TABLE}.w_AcadmCert_pcnt ;;
  }
  dimension: w_educ12_pcnt {
    type: number
    sql: ${TABLE}.w_educ12_pcnt ;;
  }
  dimension: w_educ13_15_pcnt {
    type: number
    sql: ${TABLE}.w_educ13_15_pcnt ;;
  }
  dimension: w_educ13_pcnt {
    type: number
    sql: ${TABLE}.w_educ13_pcnt ;;
  }
  dimension: w_educ16_pcnt {
    type: number
    sql: ${TABLE}.w_educ16_pcnt ;;
  }
  dimension: w_educ8_pcnt {
    type: number
    sql: ${TABLE}.w_educ8_pcnt ;;
  }
  dimension: w_educ9_12_pcnt {
    type: number
    sql: ${TABLE}.w_educ9_12_pcnt ;;
  }
  dimension: w_matric_cert_pcnt {
    type: number
    sql: ${TABLE}.w_MatricCert_pcnt ;;
  }
  dimension: w_other_cert_a_pcnt {
    type: number
    sql: ${TABLE}.w_OtherCertA_pcnt ;;
  }
  dimension: w_other_cert_b_pcnt {
    type: number
    sql: ${TABLE}.w_OtherCertB_pcnt ;;
  }
  dimension: w_post_secondary_cert_pcnt {
    type: number
    sql: ${TABLE}.w_PostSecondaryCert_pcnt ;;
  }
  dimension: w_secondary_cert_pcnt {
    type: number
    sql: ${TABLE}.w_SecondaryCert_pcnt ;;
  }
  dimension: yeshiva_pcnt {
    type: number
    sql: ${TABLE}.yeshiva_pcnt ;;
  }
  measure: count {
    type: count
    drill_fields: [shape_name]
  }
}
