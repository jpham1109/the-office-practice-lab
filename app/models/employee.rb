#one of these classes will be instantiated with objects of others
class Employee
    attr_accessor :employee_name, :salary, :manager, :role
    @@all = []
    
    def initialize(employee_name, salary)
        @employee_name = employee_name
        @salary = salary
        @manager = manager
        @role = role
        @@all << self
    end

    def self.all
        @@all = []
    end
    
    def name 
        self.employee_name
    end

    def salary 
        self.salary
    end 

    def manager
        self.manager
    end 

    def role
        self.role
    end

    def self.paid_over(amount)
        # takes a `Fixnum` argument and returns an `Array` of all the employees whose salaries are over that amount
        self.all.map{|employee| employee.salary > amount}
    end

    def self.find_by_department(department_name)
        #find
        #takes a `String` argument that is the name of a department and returns the first employee whose manager is working in that department
        Employee.all.find{|employee| employee.manager.department == department_name}
    end

    def self.search_by_role(role_name)
        #select
        #takes a `String` argument that is the name of a role and returns all the employees who work at that role
        self.all.select{|employee| employee.role == role_name}
    end 
    
    def
    end

    def get_promoted(role_name)
        
        #takes an argument of an instance of a Role, updates Employee's role and increases Employee's salary
        
    end
end
