require 'pry'

def game_hash
  {
 :home =>{
  :team_name =>"Brooklyn Nets",
   :colors => ["Black", "White"],
   :players =>{
     "Alan Anderson" =>{
   number:0,
   shoe:16,
   points:22,
   rebounds:12,
   assist:12,
   steals:3,
   blocks:1,
   slam_dunks:1
   },
 "Reggie Evans" =>{
   number:14,
   shoe:14,
   points:12,
   rebounds:12,
   assist:12,
   steals:12,
   blocks:12,
   slam_dunks:7
 },
 "Brook Lopez" =>{
   number:11,
   shoe:17,
   points:17,
   rebounds:19,
   assist:10,
   steals:3,
   blocks:1,
   slam_dunks:15
   },
   "Mason Plumlee" =>{
     number:1,
     shoe:19,
     points:26,
     rebounds:11,
     assist:6,
     steals:3,
     blocks:8,
     slam_dunks:15
     },
     "Jason Terry" =>{
       number:31,
       shoe:15,
       points:19,
       rebounds:2,
       assist:2,
       steals:4,
       blocks:11,
       slam_dunks:1
       }
      }
     },
       :away =>{
         :team_name =>"Charlotte Hornets",
         :colors =>["Turquoise", "Purple"],
         :players =>{
           "Jeff Adrien" =>{
           number:4,
           shoe:18,
           points:10,
           rebounds:1,
           assist:1,
           steals:2,
           blocks:7,
           slam_dunks:2
         },
          "Bismack Biyombo" =>{
            number:0,
            shoe:16,
            points:12,
            rebounds:4,
            assist:7,
            steals:22,
            blocks:15,
            slam_dunks:10
            },
           "DeSagna Diop" =>{
            number:2,
            shoe:14,
            points:24,
            rebounds:12,
            assist:12,
            steals:4,
            blocks:5,
            slam_dunks:5
            },
         "Ben Gordon" =>{
            number:8,
            shoe:15,
            points:33,
            rebounds:3,
            assist:2,
            steals:1,
            blocks:1,
            slam_dunks:0
            },
          "Kemba Walker" =>{
            number:33,
            shoe:15,
            points:6,
            rebounds:12,
            assist:12,
            steals:7,
            blocks:5,
            slam_dunks:12
         }
       }
     }
   } 
end
       def num_points_scored(name)
         game_hash.each do |team_location,team_hash|
          
      team_hash[:players].each do |player_name,player_data|
        if name == player_name
          return player_data[:points] 
      end
     end
    end
   end
           
       def shoe_size (name)
          game_hash.each do |team_location,team_hash|
            #binding.pry
        team_hash[:players].each do |player_name,player_data|
          if name == player_name
          return player_data[:shoe]
         end
       end
     end
   end
        
def team_colors(team)
  game_hash.each do |team_position,team_data|
    #binding.pry
    if team == team_data[:team_name]
    return team_data[:colors]
    #binding.pry
    end
  end
 end
 
 def team_names
 game_hash.map do |team_position,team_data|
 #binding.pry
 team_data[:team_name]
   end
  end

def player_numbers(team_name)
  nums = []
  game_hash.each do |team_position,team_data|
    if team[:team_name] == team_name
      team.each do |attributes,data|
        if attributes == :players
          binding.pry
          data.each do |player|
            nums << player[:number]
          end
        end
      end
    end
  end
  nums
end
  
  #def player_stats(players_name)    
    #new_hash -{}
    #game_hash.each do |team_position,team_data|
      #team.each do |attributes,data|
        #if attributes == :players
          #data.each do |player|
            #if player[:player_name] == players_name
              new_hash =player
        #end 
      #end 
     # end
    #end
    #end
  #new_hash
#end 
    

 

 

    
       
    
             
           

     