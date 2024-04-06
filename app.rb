require "sinatra"
require "sinatra/reloader"

get("/") do

  erb(:main_page)
  
end


get("/rock") do
  @our_action = "We played rock!"
  
  @computer_decision = ["rock", "paper", "scissors"].sample
  
  @random_action = "They played " + @computer_decision.to_s + "!"

  erb(:rock)
end 

get("/paper") do
  @our_action = "We played paper!"

  @computer_decision = ["rock", "paper", "scissors"].sample
  
  @random_action = "They played " + @computer_decision.to_s + "!"

  erb(:paper)
end 

get("/scissors") do
  @our_action = "We played scissors!"

  @computer_decision = ["rock", "paper", "scissors"].sample
  
  @random_action = "They played " + @computer_decision.to_s + "!"

  erb(:scissors)
end 
