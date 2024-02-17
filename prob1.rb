#Read the file
csv = File.readlines("data.csv")

#Get the headers
headers = csv.first.chomp.split(',')

#Make an array to store data
data = []

#Get info after the headers
csv[1..-1].each do |line|

    values = line.split(',')
    row_hash = {}
    headers.each_with_index do |header, index|
        row_hash[header] = values[index].chomp
    end
  
    #Add to the array
    data << row_hash
end

# Print the result
puts data.inspect
