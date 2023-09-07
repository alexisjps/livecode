require 'csv'

array = ['Youssef', 'Alexis', 'Charif', 'Ahmed', 'Tarik']


CSV.open('wtf.csv', 'wb') do |csv|
    array.each do |name|
       csv << [name, 'YOUHOU']
    end
end