require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)

  pigeon_list = {}

  #gather attribute categories by name
  data.each do |category, list|  #'color', 'purple'
    list.each do |attribute, names|  #'purple', names array
      names.each do |name|
        if pigeon_list[name]
          pigeon_list[name].store(category, [])
        else
          pigeon_list[name] = { category => [] }
        end
      end
    end
    binding.pry
  end

  #create a

  #fill in categories
  data.each do |category, list|  #'color', 'purple'
    list.each do |attribute.to_s, names|  #'purple', names array
      names.each do |name|
        if pigeon_list[name][category][attribute]
          pigeon_list[name][category][attribute] << name
        else
          pigeon_list[name][category][attribute] = [name]
        end
      end
    end
    binding.pry
  end

  pigeon_list
end

nyc_pigeon_organizer(pigeon_data)
