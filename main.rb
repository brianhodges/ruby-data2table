tab = ' ' * 4
countries = [
    {
        :name => 'USA',
		:population => '350 million'
    },
    {
        :name => 'China',
		:population => '1.4 billion'
    },
    {
        :name => 'Russia',
		:population => '145 million'
    }
]

puts
puts 'DUMP:'
puts countries.inspect
puts

puts 'SANITIZED:'
puts '['
countries.each do |c|
	puts tab + c.inspect
end
puts ']'
puts

# loop countries - array of objects
puts 'TABLE:'
puts 'Countries | Population'
puts '-' * 'Countries | Population'.size
countries.each do |c|
	puts c[:name] + 
		(' ' * ('Countries '.size - c[:name].size)) + '|' +
		c[:population]
end
puts
