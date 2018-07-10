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
  # describe('#save') do
  #   it('adds an animal to the array of saved animals') do
  #     test_task = Animal.new({:description => 'learn SQL', :list_id => 1, :due_date => Date.new(2018,7,20)})
  #     test_task.save()
  #     expect(Task.all()).to(eq([test_task]))
  #   end
  # end
  # describe("#description") do
  #  it("lets you read the description out") do
  #    test_task = Task.new({:description => "learn SQL", :list_id => 1, :due_date => Date.new(2018,7,20)})
  #    expect(test_task.description()).to(eq("learn SQL"))
  #  end
  # end
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
