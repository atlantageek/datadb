Category.destroy_all()
Facet.destroy_all()

Metric.find(:all) do |m|
  category =Category.create(:name =>'Consumer Price Index for All Urban Consumers')
  result =/Consumer Price Index for All Urban Consumers:(.*?) (in .*)?$/.match(m.name)
  if (!result.nil?)
    facet = Facet.find_or_create( :name =>result[1], :category => category)
    m.facets << facet
    puts "A"
  
  end
  
end
