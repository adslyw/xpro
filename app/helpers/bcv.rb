module Bcv
  def connect(host,user,password,database)
    @conn = OCI8.new(user,password,host+'/'+database)
  end
  def query sqlstring,show_colnames=true
    @result = []
    cursor = @conn.exec(sqlstring)
    @result.push(cursor.get_col_names) if show_colnames
    while r = cursor.fetch()
      @result<<r
    end
    cursor.close
    @result
  end
  def table_info(table_name)
    cursor = @conn.exec("select * from #{table_name}")
    puts ' Name                                      Type'
    puts '='*100
    cursor.column_metadata.each do |colinfo|
      puts format(' %-41s%-s', colinfo.name,colinfo.type_string)
    end
    puts '='*100
      querystring = "select * from all_tab_comments where table_name = '#{table_name.upcase}'"
      query querystring
      print_result
    puts '='*100
      querystring ="select COLUMN_NAME,COMMENTS from all_col_comments where TABLE_NAME = '#{table_name.upcase}'"
      query querystring,false
      print_result
    puts '='*100
  end
end
