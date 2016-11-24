namespace :states do
 task :create_states => :environment do

   contacts_csv= File.read(Rails.root.join('lib','tasks','us-500.csv'))
   csv=CSV.parse(contacts_csv,:headers => true)
   csv.each do |state|
     t=State.new
      
      t.state = state['state']
   
      t.save
    end
 end
end
