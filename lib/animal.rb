class Animal
  attr_reader(:id, :animal_name, :animal_gender, :date_of_admittance, :animal_type, :animal_breed)

  def initialize(attributes)
    @id = attributes.fetch(:id)
    @animal_name = attributes.fetch(:animal_name)
    @animal_gender = attributes.fetch(:animal_gender)
    @date_of_admittance = attributes.fetch(:date_of_admittance)
    @animal_type = attributes.fetch(:animal_type)
    @animal_breed = attributes.fetch(:animal_breed)
    @id_customer = attributes.fetch(:id_customer)
  end

  def self.all
    returned_lists = DB.exec("SELECT * FROM animals;")
    lists = []
    returned_lists.each() do |animal|
      id = animals.fetch("id").to_i()
      animal_name = animals.fetch("animal_name")
      animal_gender = animals.fetch("animal_gender")
      date_of_admittance = animals.fetch("date_of_admittance")
      animal_type = animals.fetch("animal_type")
      animal_breed = animals.fetch("animal_breed")
      id_customer = animals.fetch("id_customer")

      lists.push(Animal.new({:id => id, :animal_name => animal_name, :animal_gender => animal_gender, :date_of_admittance => date_of_admittance, :animal_type => animal_type, :animal_breed => animal_breed, :id_customer => id_customer}))
    end
    lists
  end
  def save
    result = DB.exec("INSERT INTO animals (animal_name) VALUES ('#{@animal_name}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end
  #
  # def list_all_animals
  #   returned_animals = DB.exec("SELECT * FROM animals WHERE id = (#{@id});")
  #   tasks = []
  #   returned_animals.each() do |animal|
  #     pet = task.fetch("animal_name")
  #     id = task.fetch("id").to_i() # The information comes out of the database as a string.
  #     date_of_admittance = task.fetch("date_of_admittance")
  #     .push(Animal.new({:id => id, :animal_name => animal_name, , :date_of_admittance => date_of_admittance}))
  #   end
  #   tasks
  # end

  def sort_date_of_admittance
    returned_date_of_admittance = DB.exec("SELECT * FROM animals WHERE id =(#{@id}) ORDER BY date_of_admittance;")
    dates_to_sort = []
    returned_date_of_admittance.each do |task|
      id = animals.fetch("id").to_i
      animal_name = animals.fetch("animal_name")
      date_of_admittance = animals.fetch("date_of_admittance")
      dates_to_sort.push(Animal.new({:id => id, :animal_name => animal_name, :animal_gender => animal_gender, :date_of_admittance => date_of_admittance, :animal_type => animal_type, :animal_breed => animal_breed, :id_customer => id_customer}))
    end
    dates_to_sort
  end

  def ==(another_list)
    self.animal_name().==(another_list.name()).&(self.id().==(another_list.id()))
  end

end
