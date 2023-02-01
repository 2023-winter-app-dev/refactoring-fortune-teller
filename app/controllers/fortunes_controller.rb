class FortunesController < ApplicationController
  def animal
    @all_zodiacs = Zodiac.list
    @sign = params["sign"]
    @this_zodiac = @all_zodiacs[@sign.to_sym]
    @this_horoscope = @this_zodiac[:horoscope]

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)

      @array_of_numbers.push(another_number)
    end

    render({ :template => "dynamic_zodiac.html.erb" })
  end
end
