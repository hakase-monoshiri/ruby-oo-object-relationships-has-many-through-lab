class Patient

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(date, doctor)
        new_appointment = Appointment.new(date, self, doctor)
        new_appointment
    end

    def appointments
        Appointment.all.select{|ind_appmt| ind_appmt.patient == self}
    end

    def doctors
        caregivers = []
        appointments.each do |ind_appmt|
            caregivers << ind_appmt.doctor
        end
        caregivers.uniq
    end

end