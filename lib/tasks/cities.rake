namespace :cities do
 task :create_cities => :environment do

   contacts_csv= File.read(Rails.root.join('lib','tasks','us-500.csv'))
   csv=CSV.parse(contacts_csv,:headers => true)
   csv.each do |city|
     t=City.new
      
      t.city = city['city']
   
      t.save
    end
 end
end
