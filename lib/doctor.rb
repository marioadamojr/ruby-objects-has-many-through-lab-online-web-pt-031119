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
    appointment = Appointment.new(date, patient)
  end

  def appointments
    Appointment.all.select do |app|
      app.doctor == self
  end
end
