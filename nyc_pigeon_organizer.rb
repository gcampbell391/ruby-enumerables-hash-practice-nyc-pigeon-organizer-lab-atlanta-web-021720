def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |color_gender_lives, value|
    value.each do |stats, all_names|
      all_names.each do |name| 
        if pigeons[name] == nil
          pigeons[name] = {}
          pigeons[name][color_gender_lives] = {}
        else 
           pigeons[name][color_gender_lives] = {}
        end 
      end
    end 
  end 
  pigeons.each do |name, value|
    value.each do |pigeon_value, all_names|
      data.each do |color_gender_lives, value|
        value.each do |stats, all_names|
          all_names.each do |x|
            if x == name && pigeon_value == color_gender_lives
              pigeons[name][pigeon_value] << stats.to_s
            end 
          end 
        end 
      end 
    end 
  end 
  pigeons
end 
