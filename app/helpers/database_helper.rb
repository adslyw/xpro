module DatabaseHelper
  include Bcv
  include Oracle

  def bcv_update_time
    connect(DB_SERVER,DB_USER,DB_PASSWORD,BCV)
    query "select * from sync_bill2bcv_t",false
    @result[0][1]
  end
  def bcv_updated?(bcv_update_time)
    Time.now.to_date.to_s == (bcv_update_time).scan(/\S+/)[0]
  end
  def dblink_bill2crm_existed?
    connect(DB_SERVER,DB_USER,DB_PASSWORD,BCV)
    query "select object_name,status from user_objects where object_type='DATABASE LINK'",false
    if !@result.empty?
       @result[0][1] == 'VALID'
     else
       false
     end
  end
  def make_dblink
    connect(DB_SERVER,DB_USER,DB_PASSWORD,BCV)
    @conn.exec("create database link #{CRM_DBLINK} connect to #{DB_USER} identified by #{DB_PASSWORD} using '#{CRM}'")
  end
end
