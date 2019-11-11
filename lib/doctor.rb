class Doctor
  
  attr_accessor :name, :appointment, :doctor, :patient
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
  
  def appointments
    Appointment.all.collect {|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.map {|appointment| appointment.patient}
  end
  
  def new_appointment(date, patient)
    appointment = Appointment.new(date, patient, self)
    
  end 
end 