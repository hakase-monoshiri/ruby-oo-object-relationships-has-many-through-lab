class Doctor

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, patient)
        new_appointment = Appointment.new(date, patient, self)
        new_appointment
    end

    def appointments
        Appointment.all.select{|ind_appmt| ind_appmt.doctor == self}
    end

    def patients
        patient_list = []
        appointments.each do |ind_appmt|
            patient_list << ind_appmt.patient
        end
        patient_list.uniq
    end



end
