class Person
    #definimos metodos getter y setter
    attr_accessor :first_name, :last_name, :age, :type
    
    def initialize(first_name, last_name, age, type)
        @first_name = first_name
        @last_name = last_name
        @age = age
        @type = type
    end

    def birthday
        @age += 1
    end
    # se utiliza case y when para simplificar if-elsif
    def talk
        case @type
        when "Student"
        puts "Aquí es la clase de programación con Ruby?"
        when "Teacher"
        puts "Bienvenidos a la clase de programación con Ruby!"
        when "Parent"
        puts "Aquí es la reunión de apoderados?"
        end
    end
    # Se agrega el metodo introduce a la clase Person
    def introduce
        case @type
        when "Student"
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        when "Teacher"
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        when "Parent"
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
        end
    end
end
#se crea la clase teaher, Parent, Studen que heredan de persona quedando con los metodos  talk e introduce.
class Teacher < Person
end

class Parent < Person
end

class Student < Person
end
# se iniializa el objeto
student_one = Student.new("Andres", "Echeverry", 36, "Student")
#se llaman los metodos talk introduce
student_one.talk
student_one.introduce
puts
teacher_one = Teacher.new("Pedro", "González", 30, "Teacher")
teacher_one.introduce
teacher_one.talk
puts
parent_one = Parent.new("Ana", "Pérez", 45, "Parent")
parent_one.introduce
parent_one.talk