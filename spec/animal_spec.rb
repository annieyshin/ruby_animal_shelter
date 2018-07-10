require("rspec")
require("pg")
require("animal_shelter")
require("spec_helper")
require('pry')
# require('date')

describe(Animal) do
  describe(".all") do
   it("is empty at first") do
     expect(Animal.all()).to(eq([]))
   end
  end
  describe('#save') do
    it('adds an animal to the array of saved animals') do
      test_animal = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => 06/06/2006, :animal_type => "cat", :animal_breed => "siamese"})
      test_animal.save()
      expect(Animal.all()).to(eq([test_animal]))
    end
  end
  describe("#animal_name") do
   it("lets you read the animal name and information") do
     test_animal = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => 06/06/2006, :animal_type => "cat", :animal_breed => "siamese"})
     expect(test_animal.animal_name()).to(eq("Charlie"))
   end
  end
  describe("#list_all_animal_information") do
   it("lets you read the animal name and information") do
     test_animal = Animal.new({:id => 1, :animal_name => 'Charlie', animal_gender: 'female', :date_of_admittance => 06/06/2006, :animal_type => "cat", :animal_breed => "siamese"})
     expect(test_animal.list_all_animal_information()).to(eq([{:id=>1, :animal_name=>"Charlie", :animal_gender=>"female", :date_of_admittance=>0, :animal_type=>"cat", :animal_breed=>"siamese"}]))
   end
  end
  # describe("#list_id") do
  #  it("lets you read the list ID out") do
  #    test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => Date.new(2018,7,20)})
  #    expect(test_task.list_id()).to(eq(1))
  #  end
  # end
  # describe('#==') do
  #   it('is the same task if it has the same description') do
  #     task1 = Task.new({:description => 'learn SQL', :list_id => 1, :due_date => Date.new(2018,7,20)})
  #     task2 = Task.new({:description => 'learn SQL', :list_id => 1, :due_date => Date.new(2018,7,20)})
  #     expect(task1).to(eq(task2))
  #   end
  # end
end
