class Doctor
    
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end 

    def appointments
        my_appointments = Appointment.all.select do |appointment|
            appointment.doctor == self 
        end 
        my_appointments 
    end 

    def patients 
        appointments.collect do |appointment|
            appointment.patient 
        end 
    end 

end 