class DiceController < ApplicationController
  def options
    render({:template => "roll/home_page"})
  end 

  def roll
    @num_dice = params.fetch("num_dice").to_i
    @num_sides = params.fetch("num_sides").to_i
    @rolls = []
    @num_dice.times do
      @rolls.push(rand(1..@num_sides))
    end
    render({:template => "roll/roll_results"})
  end
end
