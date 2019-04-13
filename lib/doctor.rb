class Doctor
  attr_accessor :name
  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
    Appointment.all.collect do |app|
      app.patients
    end
  end
end
