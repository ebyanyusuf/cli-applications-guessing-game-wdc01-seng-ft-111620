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
it "responds to a correct guess" do
       allow(self).to receive(:rand).and_return(1)
       allow(self).to receive(:rand).and_return(4)

       expect(self).to receive(:gets).and_return("2")
       expect(self).to receive(:gets).and_return("4")

       expect { run_guessing_game }.to output(/You guessed the correct number!/).to_stdout
     end