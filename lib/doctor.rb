
class Doctor 
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self 
  end   

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end   

  def appointments 
    Appointment.all.select{|appointment| appointment.doctor == self}
  end   

  def patients 
    appointments.map{|appointment| appointment.patient}
  end   
  # binding.pry
  def self.all 
    @@all 
  end 
  
end