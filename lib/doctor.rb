class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    #creates new Appointmnt (class instance). Appt should know it belongs to this doctor
    Appointment.new()
  end

end
