class Prod < ActiveRecord::Base
  attr_accessible :f_if_3g, :f_prod_id, :f_prod_name, :f_prod_type, :f_service_kind
  establish_connection "remote_db"
  set_table_name "PM_PRODUCT_T"
  set_primary_key :f_prod_id
  set_sequence_name :f_prod_id
  set_string_columns :f_if_3g
  ignore_table_columns :f_procinst_id, :f_lifecycle_status, :f_status_chg_time, :f_prod_version,
                       :f_prod_brand, :f_prod_code, :f_prod_desc, :f_prod_group_id, :f_prod_level,
                       :f_offer_type, :f_area_id, :f_create_date, :f_active_date, :f_inactive_date,
                       :f_delay_unit, :f_delay_time, :f_upgrade_type, :f_permit_instantly,:f_test_limit,
                       :f_tested_counter, :f_if_changable, :f_effect_type, :f_min_effect_months,
                       :f_max_effect_months, :f_default_effect_months, :f_select_default, :f_intending_release_date,
                       :f_close_date, :f_plan_id, :f_version_upgrade_reason, :f_spread_range, :f_rel_procinst_id,
                       :f_if_grp, :f_if_reorder, :f_lifecycle_id, :f_if_comb_prod, :f_prodcycle_size, :f_if_top,
                       :f_if_unified, :f_bill_flag, :f_real_release_date
end
