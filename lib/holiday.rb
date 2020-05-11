require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash.each do |season, day|
    if season == :winter
      day.each do |holiday, supply_array|
        if holiday == :christmas || holiday == :new_years
        supply_array << supply
        # binding.pry
        end
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash.each do |season, day|
    if season == :spring
      day.each do |holiday, supply_array|
        if holiday == :memorial_day
          supply_array << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
      
    holiday_hash[season][holiday_name] = supply_array
    holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  winter_supplies << holiday_hash[:winter][:christmas]
  winter_supplies << holiday_hash[:winter][:new_years]
  winter_supplies.join (", ")
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, day|
    puts "#{season.capitalize}:"
  end
  
  holiday_hash.each do |season, day|
    day.each do |holiday, supplies|
      if holiday == :new_years
        puts "  New Years: #{supplies.join(", ")}"
      elsif holiday == :fourth_of_july
        puts "  Fourth Of July: #{supplies.join(", ")}"
      elsif holiday == :memorial_day
        puts "  Memorial Day: #{supplies.join(", ")}"
      else puts "  #{holiday.capitalize}: #{supplies.join(", ")}"
      end
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash.each do |season, day|
    day.each do |holiday, supplies|
      if supplies.include?("BBQ")
        bbq_array << holiday
      end
    end
  end
  bbq_array
end







