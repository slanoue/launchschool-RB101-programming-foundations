# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

def add_hash_values(hsh)
  values_total = 0
  hsh.each_value { |value| values_total += value }
  values_total
end
