User.destroy_all
u1 = User.create :email => 'kian@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'info@bundesliga-agent.com', :password => 'chicken'
puts "#{User.count} users created"


Player.destroy_all
p1 = Player.create(:name =>'Lionel Messi', :nationality => 'Argantina', :dob => '', :market_value => '150',
:image => 'https://www.fcbarcelona.com/photo-resources/2019/09/12/2c22eb75-7530-47bc-9ea8-92b492b6780a/Messi-600x708.png?width=1340&height=1580',
:position => 'Right Winger', :goals => '')
p1 = Player.create(:name => 'Lionel Messi', :nationality => 'Argantina', :dob => '24-05-1987', :market_value => '150',
:position => 'Right Winger',
:image => 'https://www.fcbarcelona.com/photo-resources/2019/09/12/2c22eb75-7530-47bc-9ea8-92b492b6780a/Messi-600x708.png?width=1340&height=1580',
:goals => '')
p2 = Player.create(:name => 'Ousmane Dembélé', :nationality => 'France', :dob => '15-05-1997', :market_value => '100mil',
:position => 'Left Winger',
:image => 'https://www.fcbarcelona.com/photo-resources/2019/09/12/1d0e5cdd-8891-4d8e-9ce4-703f7642a728/Dembele-600x708.png?width=1340&height=1580', :goals => '')
p3 = Player.create(:name => 'Antoine Griezmann', :nationality => 'France', :dob => '21-03-1991', :market_value => '130mil',
:position => 'Center-Forward',
:image => 'https://www.fcbarcelona.com/photo-resources/2019/09/12/003f5e86-ddfe-43ff-940e-d4a51605b948/Griezmann-600x708.png?width=1340&height=1580', :goals => '')
puts "#{ Player.count } players created"


Club.destroy_all
c1 = Club.create(:name =>'FC Barcelona', :league => 'Laliga', :country => 'Spain', :manager => 'Ernesto Valverde',
:image => 'https://logos-download.com/wp-content/uploads/2016/05/FC_Barcelona_logo_logotipo_crest.png')
c2 = Club.create(:name =>'São Paulo Futebol Clube', :league => 'Brazil Série A
', :country => 'Brazil', :manager => 'Fernando Diniz',
:image => 'https://en.wikipedia.org/wiki/S%C3%A3o_Paulo_FC#/media/File:Brasao_do_Sao_Paulo_Futebol_Clube.svg')
puts "#{Club.count} clubs created"

Confederation.destroy_all
co1 = Confederation.create(:name =>'Europe', :country => 'Spain, Germany, England', :league => 'Laliga, Premium League',
:image => 'https://www.logospng.com/images/36/dateiuefa-logopng-ndash-wikipedia-36707.png', :competition =>'',
:total_value => '')
co2 = Confederation.create(:name =>'South America', :country => 'Brazil, Argantina', :league => 'Brazil Serie A, Superliga',
:image => 'https://upload.wikimedia.org/wikipedia/en/a/a8/CONMEBOL_logo_%282017%29.svg',:competition =>'',
:total_value => '')
puts "#{ Confederation.count } Confederations created"

Stadium.destroy_all
s1= Stadium.create(:name => 'Nu Camp', :built => '1957', :country => 'Spain', :total_capacity => '99354',
:image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Camp_Nou_Panoramic_Interior_View.jpg/2560px-Camp_Nou_Panoramic_Interior_View.jpg' )
s2= Stadium.create(:name => 'Arena Corinthians', :built => '2014', :country => 'Brazil', :total_capacity => '49205',
:image => 'https://sportsvenuebusiness.com/wp-content/uploads/2018/03/C-X-A-1-de-1.jpg')
puts "#{ Stadium.count } stadia created"

# Associations #################################################################
puts "players and clubs"
c1.players << p1
# c2.players << p2

puts "Clubs and Stadia"
c1.stadia << s1
c2.stadia << s2

puts "Confederations and Clubs"
co1.clubs << c1
co2.clubs << c2

puts "Stadiums and Confederations"
co1.stadiums << s1
co2.stadiums << s2
#s2.confederations << co2

puts "Confederations and players"
co1.players << p1
# p2.confederation << co1
