class Appointment
  attr_accessor :date, :patient, :doctor

  def initialize(patient, date)
    @patient=patient
    @date=date
  end

end
