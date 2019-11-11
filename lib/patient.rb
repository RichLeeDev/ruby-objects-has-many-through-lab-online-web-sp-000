class Patient
  attr_accessor :name, :appointment, :doctor
  
  @@all = []
  
  def all
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
    appointment = Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctor == self.doctor}
  end
end 