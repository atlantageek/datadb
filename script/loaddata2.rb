

Metric.all.each do |metric|
next if metric.measurements.count() > 0
path =  metric.file_path 
path.gsub!(' ','')
  file = File.new(path) 
  while (line = file.gets) do
    data = line.split(',')
    metric.measurements.create!(:dt => data[0], :val => data[1])
  end
end
