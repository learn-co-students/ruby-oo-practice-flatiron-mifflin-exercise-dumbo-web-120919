class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, age, department)
        @name = name
        @age = age
        @department = department

        @@all << self
    end

    def hire_employee(employee, salary)
        new_hire = Employee.new(employee, salary, self)
    end

    def all_departments
        dpments = Manager.all.map do |one_manager|
            one_manager.department
        end
        dpments
    end

    def average_age
        all_ages = Manager.all.map do |one_dude|
            one_dude.age
        end
        sum_age = all_ages.sum
        total_ave = sum_age/all_ages.length
        total_ave
    end

    def self.all
        @@all
    end

end
