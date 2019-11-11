class Patient
  attr_accessor :name, :appointment
  
  @@all = []
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def new_appointment(date, doctor)
    appointment = Appointment(date, doctor)
    appointment.patient == self
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    self.doctor.all.collect {|doctor| doctor.patient == self}
  end
end 