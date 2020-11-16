def run_guessing_game
     number = rand(1..6).to_s
     prompt_user = (user_input = gets.chomp)

     if user_input == "exit"
         puts "Goodbye!"
     end

     if user_input == number
         puts "You guessed the correct number!"
     elsif user_input != number
         puts "Sorry! The computer guessed 6."
     end
 end