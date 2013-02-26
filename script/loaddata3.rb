

Metric.all.each do |metric|
next if metric.measurements.count() > 0
path =  metric.file_path 
path.gsub!(' ','')
 begin
  puts("copy bacon from '#{metric.file_path}'")
  ActiveRecord::Base.connection.execute('drop table if exists bacon;')
  ActiveRecord::Base.connection.execute('create table bacon (dt date, val varchar(10));')
  ActiveRecord::Base.connection.execute("copy bacon from '#{metric.file_path}' with CSV HEADER;")
  ActiveRecord::Base.connection.execute("delete from bacon where val = '.';")
  ActiveRecord::Base.connection.execute("insert into measurements (dt,val,metric_id,created_at,updated_at ) (select dt,to_number(val,'99999999999999.999'), #{metric.id},now(),now() from bacon);")
 rescue Exception => e
   puts e.message
 end
end
