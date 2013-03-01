Category.destroy_all()
Facet.destroy_all()



Metric.find(:all) do |m|
  category = Category.find_or_create_by_name('Consumer Price Index for All Urban Consumers')
  result =/Consumer Price Index for All Urban Consumers:\s*(.*?) (in .*)?$/.match(m.name)
  if (!result.nil?)
    facet_name = result[1].capitalize
    facet_name.gsub!(/excluding/,'less')
    facet = Facet.find_or_create_by_category_id_and_name( category.id, facet_name)
    m.facets << facet
    puts "A"
  end#if

  category = Category.find_or_create_by_name('Consumer Price Index')
  result =/Consumer Price Index:\s*(.*?) for (.*)$/.match(m.name)
  if (!result.nil?)
    facet_name = result[1].capitalize
    facet_name.gsub!(/excluding/,'less')
    facet = Facet.find_or_create_by_category_id_and_name( category.id, facet_name)
    m.facets << facet
    puts "A"
  end#if

  category = Category.find_or_create_by_name('Consumption share by country')
  result =/ Consumption Share of Purchasing Power Parity Converted GDP Per Capita at current prices for\s*(.*?)/.match(m.name)
  if (!result.nil?)
    facet_name = result[1].capitalize
    facet_name.gsub!(/excluding/,'less')
    facet = Facet.find_or_create_by_category_id_and_name( category.id, facet_name)
    m.facets << facet
    puts "A"
  end#if
  
end#Metric, find
