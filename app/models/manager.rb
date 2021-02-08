#one of these classes will be instantiated with objects of others
class Manager
    attr_accessor :manager_name, :department, :age
    @@all = []

    def initialize(manager_name, department, age)
        @manager_name = manager_name
        @department = department
        @age = age
        @@all << self
    end 

    def self.all
        @@all
    end 

    def employees 
        #returns an Array of all the employees that the manager oversees
        Employee.all.select{|employee| employee.manager == self}
    end 

    def roles
        #returns an Array of all the roles that the manager oversees
        self.employees.map{|employee| employee.role}
    end

    def self.all_departments
        #uniq
        #returns an Array of all the department names that every manager oversees without repetitions
        self.all.map{|manager| manager.department}.uniq
    end 

    def self.all_age
        self.all.map{|manager| manager.age}
    end 

    def self.age_average
        self.all_age.inject{|sum, age| sum + age}.to_f / self.all_age.size
        binding.pry
    #returns a Float that is the average age of all the managers
    #.to_f
    end

end
