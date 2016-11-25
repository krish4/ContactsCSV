namespace :states do
 task :create_states => :environment do

   contacts_csv= File.read(Rails.root.join('lib','tasks','us-500.csv'))
   csv=CSV.parse(contacts_csv,:headers => true)
    @counter = 0
   csv.each do |state|
     t=State.new
      @counter = @counter + 1
      t.state = state['state']
      t.city = state['city']
      t.contact_id = @counter
      t.save
    end
 end
end
