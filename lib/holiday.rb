require 'pry'
holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply 
  holiday_hash[:winter][:new_years] << supply
  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
 holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
 holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
    value.each do |inner_key, inner_value|
      inner_key = inner_key.to_s.split("_")
      inner_key = inner_key.map {|word| word.capitalize }.join(' ')
      inner_value = inner_value.join(", ")
      puts "  #{inner_key}: #{inner_value}"
    end 
  end
end

def all_holidays_with_bbq(holiday_hash)
 holidays = []
  holiday_hash.each do |key, value|
    value.each do |inner_key, inner_value|
      holidays << inner_key if inner_value.include?("BBQ")
    end
  end
  holidays
end







