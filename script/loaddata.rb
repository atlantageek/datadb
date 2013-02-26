

puts("/home/tj/dev/FRED_csv_2/metric_list.csv") 
file = File.new("/home/tj/dev/FRED2_csv_2/metric_list.csv") 

while (line = file.gets)
  data = line.split(';')
  path = '/home/tj/dev/FRED2_csv_2/data/' + data[0].gsub('\\','/')
  puts data.inspect()
  Metric.create!(:file_path => path, :name => data[1], :units => data[2], 
      :frequency => data[3], :seasonal => data[4], :last_updated => data[5])


end
