class GamesController < ApplicationController
  
  def namecaps_method
    input_name = params[:name]
    name_upcased = input_name.upcase 
    render json: {your_name: name_upcased}
  end

  def guess_seg_method
    winning_number = 52

    input_guess = params[:this_is_a_guess].to_i

    if input_guess > winning_number
    output_message = "Guess lower!"

    elsif input_guess < winning_number
    output_message = "Guess higher!"

    else
    output_message = "You guessed it!"
    end

  end

  def guess_method
    winning_number = 52

    input_guess = params[:user_guess].to_i

    if input_guess > winning_number
    output_message = "Guess lower!"

    elsif input_guess < winning_number
    output_message = "Guess higher!"

    else
    output_message = "You guessed it!"
    end

  render json: {guess: input_guess, message: output_message}
  end



  def name_method
    if input_message = params[:name].start_with?("a") 
    output_message = "Hey, your name starts with the first letter of the alphabet!"
    else
    output_message = "That's a cool name."
    render json: {message: output_message}
    end
  end

end
