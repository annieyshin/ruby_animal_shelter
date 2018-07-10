require("rspec")
require("pg")
require("animal_shelter")
require("spec_helper")
require('pry')
require('customer')


describe(Customer) do
  describe(".all") do
   it("is empty at first") do
     expect(Customer.all()).to(eq([]))
   end
  end
end
  describe('#save') do
    it('adds a customer to the array of saved customers') do
      test_customer = Customer.new({:id => nil, :customer_name => 'Pepper Shakington', :phone_number => '714-871-7895', :animal_type_preference => "cat", :animal_breed_preference=> "siamese"})
      test_customer.save()
      expect(Customer.all()).to(eq([test_customer]))
    end
  end
  # describe("#animal_name") do
  #  it("lets you read the animal name and information") do
  #    test_animal = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => "06/06/2006", :animal_type => "cat", :animal_breed => "siamese"})
  #    expect(test_animal.animal_name()).to(eq("Charlie"))
  #  end
  # end
  # describe("#list_all_animal_information") do
  #  it("lets you read the animal name and information") do
  #    test_animal = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => "06/06/2006", :animal_type => "cat", :animal_breed => "siamese"})
  #    expect(test_animal.list_all_animal_information()).to(eq([{:id=>1, :animal_name=>"Charlie", :animal_gender=>"female", :date_of_admittance=>"06/06/2006", :animal_type=>"cat", :animal_breed=>"siamese"}]))
  #  end
  # end
  # describe("#list_all_animal_information") do
  #  it("lets you read the animal name and information") do
  #    test_animal = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => "06/06/2006", :animal_type => "cat", :animal_breed => "siamese"})
  #    test_animal.save()
  #    test_animal2 = Animal.new({:id => 2, :animal_name => 'Mookie', animal_gender: 'male', :date_of_admittance=>"06/06/2006", :animal_type => "dog", :animal_breed => "chow chow"})
  #    test_animal2.save()
  #    expect(Animal.all()).to(eq([test_animal, test_animal2]))
  #  end
  # end
  # describe("#sort_date_of_admittance") do
  #   it("will sort all animals by the day they were admitted") do
  #     test_animal = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => "06/06/2012", :animal_type => "cat", :animal_breed => "siamese"})
  #     test_animal.save()
  #     test_animal2 = Animal.new({:id => 2, :animal_name => 'Mookie', animal_gender: 'male', :date_of_admittance=>"06/06/2006", :animal_type => "dog", :animal_breed => "chow chow"})
  #     test_animal2.save()
  #     expect(Animal.sort_date_of_admittance()).to(eq([test_animal2, test_animal]))
  #   end
  # end
  #
  # describe('#==') do
  #   it('is the same task if it has the same description') do
  #     test_animal = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => "06/06/2006", :animal_type => "cat", :animal_breed => "siamese"})
  #     test_animal2 = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => "06/06/2006", :animal_type => "cat", :animal_breed => "siamese"})
  #     expect(test_animal).to(eq(test_animal2))
  #   end
  # end
# end
