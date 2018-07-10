require 'csv'

file = File.read('43dp.csv')
makers = CSV.parse(file, headers: true)

makers.each do |maker|
    Maker.create(
        name: maker[1],
        email: maker[3],
        phone_number: maker[2]
    )
end