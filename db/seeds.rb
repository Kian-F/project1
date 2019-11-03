User.destroy_all
u1 = User.create :email => 'kian@gmail.com', :password => 'chiken', :admin => true
u2 = User.create :email => 'info@bundesliga-agent.com', :password => 'chicken'
puts "#{User.count} users created"
