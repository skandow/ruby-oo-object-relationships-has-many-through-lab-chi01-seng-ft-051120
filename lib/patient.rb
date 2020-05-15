class Patient
    
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end 

    def appointments
        my_appointments = Appointment.all.select do |appointment|
            appointment.patient == self 
        end 
        my_appointments 
    end 

    def doctors 
        appointments.collect do |appointment|
            appointment.doctor 
        end 
    end 

end 