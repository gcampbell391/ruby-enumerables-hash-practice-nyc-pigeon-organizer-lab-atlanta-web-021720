def nyc_pigeon_organizer(data)
  pigeons = {}
  data.each do |property, hash|
    hash.each do |attribute, array|
      array.each do |name|
        if !pigeons.has_key?(name)
          pigeons[name] = {}
        end

        if !pigeons[name].has_key?(property)
          pigeons[name][property] = []
        end

        if !pigeons[name][property].include?(attribute)
          pigeons[name][property] << attribute.to_s
        end
      end
    end
  end
  pigeons
end
