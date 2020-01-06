class Employee
    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name

        @@all << self
    end

    def paid_over(num)
        paid_terrible = Employee.all.select do |one_employee|
            one_employee.salary > num
        end
        their_names = paid_terrible.map do |one_lowwager|
            one_lowwager.name
        end
        their_names
    end
    
    def find_department(depo_name)
        emp = Employee.all.find do |one_employee|
            self.manager_name.department == depo_name
        end
        emp.name
    end
    def tax_bracket
        no_one_makes_more_than_500 = Employee.all.select do |one_guy|
            one_guy.salary.between?(0, 1000)
        end
        no_one_makes_more_than_500
    end
    # binding.pry

    def self.all
        @@all
    end

end
