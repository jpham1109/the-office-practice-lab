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

    def name 
        self.manager_name
    end 

    def department
        self.department
    end

    def age 
        self.age
    end 

    def employees 
        Employee.all.map{|employee| employee.manager == self}
    end 

    def roles
        #need to find which class has the info we need
        Role.all
    end

    def self.all_departments
        #uniq
    end 

    def self.age_average
    #returns a Float that is the average age of all the managers
    #.to_f
    end

end
