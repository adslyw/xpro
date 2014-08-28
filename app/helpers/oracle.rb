module Oracle
  require 'rubygems'
  require 'oci8'
  DB_HOST 	= '130.84.1.112'
  DB_PORT   = '1521'
  DB_SERVER	= DB_HOST + ':' + DB_PORT
  DB_USER		= 'SX_SL'
  DB_PASSWORD	= 'DW56H1XO'
  BCV = 'bssbill1'
  CRM = '(DESCRIPTION=(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=130.84.1.122)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=bsscrm1)))'
  CRM_DBLINK = 'BILL2CRM'
end
