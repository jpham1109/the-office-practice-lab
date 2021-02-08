##one of these classes will be instantiated with objects of others
class Role
    attr_accessor :role_name
    @@all = []

    def initialize(role_name)
        @role_name = role_name
        @@all << self
    end 

    def employees
        #returns an array of all the Employees who work at that role
        Employee.all.select{|employee| employee.role == self}
    end
    
    def managers
       #returns a unique array of all the Manager instances who oversee Employees at that role  
       self.employees.map{|employee| employee.manager}.uniq
    end

    def add_employee(employee_name, salary, manager)
        #should manager be in Employee's initialization?
        Employee.new(employee_name, salary, manager, self) 
    end
end