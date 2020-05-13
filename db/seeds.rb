

User.destroy_all
u1 = User.create :email => 'kian@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :email => 'info@bundesliga-agent.com', :password => 'chicken'
puts "#{User.count} users created"


Player.destroy_all
p1 = Player.create(:name => 'Lionel Messi', :nationality => 'Argantina', :dob => '24-05-1987', :market_value => '150,00 mil',
:position => 'Right Winger',
:image => 'https://www.fcbarcelona.com/photo-resources/2019/09/12/2c22eb75-7530-47bc-9ea8-92b492b6780a/Messi-600x708.png?width=1340&height=1580',
:goals => '')
p2 = Player.create(:name => 'Ousmane Dembélé', :nationality => 'France', :dob => '15-05-1997', :market_value => '100,00 mil',
:position => 'Left Winger',
:image => 'https://www.fcbarcelona.com/photo-resources/2019/09/12/1d0e5cdd-8891-4d8e-9ce4-703f7642a728/Dembele-600x708.png?width=1340&height=1580', :goals => '')
p3 = Player.create(:name => 'Antoine Griezmann', :nationality => 'France', :dob => '21-03-1991', :market_value => '130,00 mil',
:position => 'Center-Forward',
:image => 'https://www.fcbarcelona.com/photo-resources/2019/09/12/003f5e86-ddfe-43ff-940e-d4a51605b948/Griezmann-600x708.png?width=1340&height=1580', :goals => '')

p4 = Player.create(:name => 'Kylian Mbappé', :nationality => 'France', :dob => '20-12-1998', :market_value => '200,00 mil',
:position => 'Center-Forward',
:image => 'https://images.psg.media/media/27066/profile-7-mbappe.png?anchor=center&mode=crop&width=800&height=800&quality=80', :goals => '')

p5 = Player.create(:name => 'Neymar', :nationality => 'Brazil', :dob => '05-02-1992', :market_value => '180,00 mil',
:position => 'Left Winger',
:image => 'https://images.psg.media/media/27069/profile-10-neymar.png?anchor=center&mode=crop&width=800&height=800&quality=80', :goals => '')

p6 = Player.create(:name => 'Mohamed Salah', :nationality => 'Egypt', :dob => '15-06-1992', :market_value => '150,00 mil',
:position => 'Right Winger',
:image => 'https://upload.wikimedia.org/wikipedia/commons/4/4a/Mohamed_Salah_2018.jpg', :goals => '')

p7 = Player.create(:name => 'Harry Kane', :nationality => 'England', :dob => '28-07-1993', :market_value => '150,00 mil',
:position => 'Centre-Forward',
:image => 'https://tot-tmp.azureedge.net/media/20208/firstteam_harrykane.png?anchor=center&mode=crop&width=750', :goals => '')

p8 = Player.create(:name => 'Eden Hazard', :nationality => 'Belgium', :dob => '07-01-1991', :market_value => '150,00 mil',
:position => 'Left Winger',
:image => 'https://www.foxsportsasia.com/uploads/2019/07/67378307_2092629264176872_8006985303753490432_n.jpg', :goals => '')
puts "#{ Player.count } players created"



Club.destroy_all
c1 = Club.create(:name =>'FC Barcelona', :league => 'Laliga', :country => 'Spain', :manager => 'Ernesto Valverde',
:image => 'https://logos-download.com/wp-content/uploads/2016/05/FC_Barcelona_logo_logotipo_crest.png', :sportdb_id => 133739)

c2 = Club.create(:name =>'São Paulo Futebol Clube', :league => 'Brazil Série A
', :country => 'Brazil', :manager => 'Fernando Diniz',
:image => 'https://en.wikipedia.org/wiki/S%C3%A3o_Paulo_FC#/media/File:Brasao_do_Sao_Paulo_Futebol_Clube.svg', :sportdb_id => 134291)

c3 = Club.create(:name =>'Paris Saint-Germain F.C.', :league => 'Ligue 1
', :country => 'France', :manager => 'Thomas Tuchel',
:image => 'https://upload.wikimedia.org/wikipedia/en/a/a7/Paris_Saint-Germain_F.C..svg', :sportdb_id => 133714)

c4 = Club.create(:name =>'Tottenham Hotspur F.C.', :league => 'Premier League
', :country => 'England', :manager => 'Mauricio Pochettino',
:image => 'https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Tottenham_Hotspur.svg/800px-Tottenham_Hotspur.svg.png', :sportdb_id => 133616)

c5 = Club.create(:name =>'Liverpool FC', :league => 'Premier League
', :country => 'England', :manager => 'Jürgen Klopp',
:image => 'https://upload.wikimedia.org/wikipedia/en/0/0c/Liverpool_FC.svg', :sportdb_id => 133602)

c6 = Club.create(:name =>'Real Madred', :league => 'Laliga
', :country => 'Spain', :manager => 'Zinédine Zidane',
:image => 'https://upload.wikimedia.org/wikipedia/en/5/56/Real_Madrid_CF.svg', :sportdb_id => 133738)

c7 = Club.create(:name =>'Manchester United', :league => 'Premier League
    ', :country => 'England', :manager => 'Ole Gunnar Solskjar',
    :image => '', :sportdb_id => 33)

puts "#{Club.count} clubs created"

Player.destroy_all
playersId = [34145937, 34145395]
clubs = Club.all 
player_count = 0;
# clubs.each do |club|
#     club_sportsdb_id = club[sportsdb_id] 
    # url_for_players = "https://api-football-v1.p.rapidapi.com/v2/teams/team/#{club_sportsdb_id}"
    # url_for_players = "https://api-football-v1.p.rapidapi.com/v2/teams/team/33"

    playersId.each do |playerId|
    url_for_players= "https://www.thesportsdb.com/api/v1/json/1/lookupplayer.php?id=#{playerId}"
    team_url = "https://www.thesportsdb.com/api/v1/json/1/lookupteam.php?id=133604"
        teamData = HTTParty.get team_url
    data = HTTParty.get url_for_players
    players = data['players'] 
    players.each do |player|
    
        new_player = Player.new
        new_player.name =  player['strPlayer']
        new_player.dob = player["dateBorn"]   
        new_player.position = player["strPosition"]    
        new_player.market_value = player["strWage"]
        new_player.nationality = player["strNationality"]   
        new_player.image = player["strThumb"]    
        new_player.save
        
    # club.players << new_player
    # sleep(1)
    end 
end 
   
puts "#{ Player.count } players created."



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
c1.players << p2
c1.players << p3
c3.players << p4
c3.players << p5
c5.players << p6
c4.players << p7
c6.players << p8

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
puts "Users and players"
u2.players << p1
