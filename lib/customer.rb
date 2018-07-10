class Customer
  attr_reader(:id_customer, :customer_name, :phone_number, :animal_type, :animal_breed)

  def initialize(attributes)
    @id_customer = attributes.fetch(:id_customer)
    @phone_number = attributes.fetch(:phone_number)
    @customer_name = attributes.fetch(:customer_name)
    @animal_type = attributes.fetch(:animal_type)
    @animal_breed = attributes.fetch(:animal_breed)
  end

  def self.all
    returned_lists = DB.exec("SELECT * FROM customer;")
    lists = []
    returned_lists.each() do |customer|
      id_customer = customer.fetch("id_customer").to_i()
      customer_name = customer.fetch('customer_name')
      phone_number = customer.fetch('phone_number')
      animal_type_preference = customer.fetch("animal_type_preference")
      animal_breed_preference = customer.fetch("animal_breed_preference")
      lists.push(Customer.new({:id_customer => id_customer, :customer_name => customer_name, :phone_number => phone_number, :animal_type_preference => animal_type_preference, :animal_breed_preference => animal_breed_preference}))
    end
    lists
  end
  # def save
  #   result = DB.exec("INSERT INTO animals (animal_name, date_of_admittance, animal_gender, animal_type, animal_breed) VALUES ('#{@animal_name}', '#{@date_of_admittance}', '#{@animal_gender}', '#{@animal_type}', '#{@animal_breed}') RETURNING id;")
  #   @id = result.first().fetch("id").to_i()
  # end

  # def list_all_animal_information
  #   returned_animals = DB.exec("SELECT * FROM animals WHERE id = (#{@id});")
  #   animal_array = []
  #   animal_array.push({:id => id, :animal_name => animal_name, :animal_gender => animal_gender, :date_of_admittance => date_of_admittance, :animal_type => animal_type, :animal_breed => animal_breed})
  #   animal_array
  # end
  #
  # def self.sort_date_of_admittance
  #   returned_date_of_admittance = DB.exec("SELECT * FROM animals ORDER BY date_of_admittance;")
  #   binding.pry
  #   dates_to_sort = []
  #   returned_date_of_admittance.each do |animal|
  #     id = animal.fetch("id").to_i()
  #     animal_name = animal.fetch('animal_name')
  #     animal_gender = animal.fetch('animal_gender')
  #     date_of_admittance = animal.fetch("date_of_admittance")
  #     animal_type = animal.fetch("animal_type")
  #     animal_breed = animal.fetch("animal_breed")
  #     dates_to_sort.push(Animal.new({:id => id, :animal_name => animal_name, :animal_gender => animal_gender, :date_of_admittance => date_of_admittance, :animal_type => animal_type, :animal_breed => animal_breed}))
  #   end
  #   dates_to_sort
  # end
  #
  # def ==(another_list)
  #   self.animal_name().==(another_list.animal_name()).&(self.id().==(another_list.id()))
  # end

end
