def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts.each do |key1, value1|
    if key1 == "Freddy Mercury"
      value1.each do |key2, value2|
        if key2 == :favorite_icecream_flavors
          value2.delete_if{|x| x == "strawberry"}
        end
      end
    end
  end
  #remember to return your newly altered contacts hash!
  contacts
end