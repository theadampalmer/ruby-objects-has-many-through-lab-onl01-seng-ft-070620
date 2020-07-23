class Patient 
  attr_accessor :name 

  def initialize(name)
    @name = name 
  end  

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor 
    end   
  end   

  def appointments
    Appointment.all.select do|appointment| 
      appointment.patient == self
    end   
  end

end 