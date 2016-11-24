namespace :contacts do
 task :create_contacts => :environment do

   contacts_csv= File.read(Rails.root.join('lib','tasks','us-500.csv'))
   csv=CSV.parse(contacts_csv,:headers => true)
   csv.each do |contact|
     t=Contact.new
      t.first_name = contact['first_name']
      t.last_name = contact['last_name']
      t.company_name = contact['company_name']
      t.address = contact['address']
      t.city = contact['city']
      t.county = contact['county']
      t.state = contact['state']
      t.zip = contact['zip']
      t.phone_one = contact['phone1']
      t.phone_two = contact['phone2']
      t.email = contact['email']
      t.web = contact['web']
      t.save
    end
 end
end
