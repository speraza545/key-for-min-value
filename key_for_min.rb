# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    most_cheap = nil
    name_hash.each do |key, value|
        if most_cheap.nil?
            most_cheap = key
        else
           most_cheap = key if name_hash[most_cheap] > name_hash[key]
        end
    end
    return most_cheap
end