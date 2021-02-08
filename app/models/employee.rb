#one of these classes will be instantiated with objects of others
class Employee
    attr_accessor :name, :salary, :manager, :role
    @@all = []
    
    def initialize(employee_name, salary=1000, manager, role)
        @name = employee_name
        @salary = salary
        @manager = manager
        @role = role
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(amount)
        # takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
        self.all.select{|employee| employee.salary > amount}
    end
    
    def self.all_managers
        #return all managers
        self.all.map{ |employee| employee.manager}
    end 
    
    
    def self.find_by_department(department_name)
        #find
        #takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
        self.all_managers.find{|manager| manager.department == department_name}
    end

    def self.search_by_role(role_name)
        #select
        #takes a `String` argument that is the name of a role and returns all the employees who work at that role
        self.all.map do |employee|
            if employee.role.role_name == role_name
                employee
            end
        end
    end 
    

    def get_promoted(role_instance)
        #takes an argument of an instance of a Role, updates Employee's role and increases Employee's salary
        self.role = role_instance
        self.salary += 100
    end
end
