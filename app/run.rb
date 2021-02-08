require 'pry'
require 'require_all'
require_all 'models'

manager1 = Manager.new("Gus", "IT", 12)
manager2 = Manager.new("Nic", "HR", 15)
manager3 = Manager.new("Linda", "MKT", 21)

sec = Role.new("Secretary")
vp = Role.new("VP")
p = Role.new("P")




employee1 = Employee.new("Doug", 100, manager1, vp)
employee2 = Employee.new("Nick", manager2, vp)
employee3 = Employee.new("Da-Mell", manager3, sec)
employee4 = Employee.new("Jamie", manager3, vp)

Employee.find_by_department("IT")
Employee.search_by_role("VP")
employee1.get_promoted(p)
vp.employees
vp.managers
sec.add_employee("George", 500, manager3)
manager3.employees
manager3.roles
Manager.all_departments
Manager.all_age
Manager.age_average
binding.pry
0