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
    # binding.pry
  end

  #create hash of attributes and their corresponding strings
  attributes = {}
  data.each do |category, list|
    list.each do |attribute, names|
      if !attributes[attribute]
        attributes[attribute] = attribute.to_s
      end
    end
  end
  # attributes = attributes.select { |k,v| k.is_a? Symbol }
  # binding.pry

  #fill in categories with attributes
  data.each do |category, list|  #'color', 'purple'
    list.each do |attribute, names|  #'purple', names array
      pigeon_list.each do |name, categories|
        if !pigeon_list[names[counter]][category].include?(attributes[attribute])
          pigeon_list[names[counter]][category] << attributes[attribute]
        end
        binding.pry
      end
    end
    binding.pry
  end

  pigeon_list
end

nyc_pigeon_organizer(pigeon_data)
