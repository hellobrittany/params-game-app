class ParamsGameController < ApplicationController
	def query
		@message = params["my_message"]
		@message_2 = params["other_message"]
	end

	def name
		if params["my_message"]
			@message = params["my_message"].upcase

			if @message[0] == "A"
				@result = "Hey, your name starts with the first letter of the alphabet!"
			end	
		end	
	end

	def guess
		@user_guess = params["submission"].to_i
		winning_numnber = 42

		if winning_numnber< @user_guess
			@answer_message = "too high."
		elsif winning_numnber > @user_guess
			@answer_message = "too low"
		else 
			@answer_message = "right on the money!"
		end	
	end

	def wildcard
		@user_guess = params["wildcard"].to_i
		winning_numnber = 42
		if winning_numnber < @user_guess
			@answer_message = "too high."
		elsif winning_numnber > @user_guess
			@answer_message = "too low"
		else 
			@answer_message = "right on the money!"
		end	

	end
end
