class Api::NumbersController < ApplicationController
  def fortune_action
    fortunes = [
                "you will live a long and rich life.",
                "you will find love in the most unusually places.",
                "you will die."
                ]

    @your_fortune = fortunes.sample
    render "fortune_view.json.jbuilder"
  end

  def lotto_action
    possible_numbers = (1..60).to_a
    picked_numbers = possible_numbers.sample(6)

    @final_numbers = "Your lucky numbers for today are: #{picked_numbers.join(", ")}"

    render 'lotto_view.json.jbuilder'
  end
end










