class CreateCbSings < ActiveRecord::Migration
  def change
    create_table :cb_sings, id:false do |t|
      t.string :area_id, :limit => 20
      t.string :area_id_cbss, :limit => 20
      t.string :city_id, :limit => 20
      t.string :city_id_cbss, :limit => 20
      t.string :user_id, :limit => 40
      t.string :cust_id, :limit => 40
      t.string :acct_id, :limit => 20
      t.string :service_type, :limit => 20
      t.string :first_call_time, :limit => 14
      t.string :is_call, :limit => 1
      t.string :is_long_call, :limit => 2
      t.string :is_roam_call, :limit => 1
      t.string :is_video_call, :limit => 2
      t.string :is_change_call, :limit => 1
      t.string :is_sms, :limit => 1
      t.string :is_gprs, :limit => 1
      t.string :is_incr, :limit => 2
      t.string :is_active, :limit => 1
      t.string :is_only_call, :limit => 2
      t.string :is_only_sms, :limit => 2
      t.string :is_only_incr, :limit => 2
      t.string :is_p2p_sms, :limit => 1
      t.string :is_card, :limit => 2
      t.string :is_roam_flux, :limit => 1
      t.string :use_status, :limit => 1
      t.string :is_initv, :limit => 2
      t.string :is_calling, :limit => 2
      t.integer :call_duration
      t.integer :call_times
      t.integer :mobile_times
      t.integer :sms_num
      t.decimal :flux_up
      t.decimal :flux_down
      t.integer :flux_dura
      t.integer :flux_times
      t.integer :local_calling_dura
      t.integer :local_called_dura
      t.integer :roam_calling_dura
      t.integer :roam_called_dura
      t.integer :toll_dura
      t.integer :local_calling_times
      t.integer :local_called_times
      t.integer :oram_calling_times
      t.integer :roam_called_times
      t.integer :toll_times
      t.integer :local_calling_nums
      t.integer :local_called_nums
      t.integer :roam_calling_nums
      t.integer :roam_called_nums
      t.integer :toll_nums
      t.string :fee_date, :limit => 6
    end
  end
end
