def nyc_pigeon_organizer(data)

  pigeon_list = {}

  #gather attribute categories by name
  data.each do |category, list|
    list.each do |attribute, names|
      names.each do |name|
        if pigeon_list[name]
          pigeon_list[name].store(list, [])
        else
          pigeon_list[name] = { list => [] }
        end
      end
    end
  end

  #fill in categories
  data.each do |category, list|
    list.each do |attribute, names|
      names.each do |name|
        if pigeon_list[name]
          pigeon_list[name].store(list, [])
        else
          pigeon_list[name] = { list => [] }
        end
      end
    end
  end

  pigeon_list
end
