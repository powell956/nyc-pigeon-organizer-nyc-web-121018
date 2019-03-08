require 'pry'

def nyc_pigeon_organizer(data)
  birds = get_names(data)

  organized_data = {}

  birds.each do |bird|
    organized_data[bird] = {}

    data.each do |attribute, hash|
      hash.each do |value, names_array|
        names_array.each do |name|
          if bird == name
            if organized_data[bird][attribute]
              organized_data[bird][attribute] << value.to_s
            else
              organized_data[bird][attribute] = [value.to_s]
            end
          end
        end
      end
    end
  end
  organized_data
  # binding.pry
end


def get_names(data)
  birds = {}

  data.each do |attribute, hash|
    # binding.pry
    hash.each do |value, names_array|
      names_array.each do |name|
        if birds[name]
          birds[name] += 1
        else
          birds[name] = 1
        end
      end
    end
  end

  names = birds.keys
  # binding.pry
end

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

nyc_pigeon_organizer(pigeon_data)
