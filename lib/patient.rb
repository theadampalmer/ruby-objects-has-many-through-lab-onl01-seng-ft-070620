class Patient 
  attr_accessor :name 
  
  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end  

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end


def appointments
    Appointment.all.select {|a| a.patient == self  }
  end

  def doctors
    Appointment.all.map {|a| a.doctor if a.patient == self  }
  end
  # def appointments
  #   Appointment.all.select {|appointment| appointment.patient == self} 
  # end

  # def doctors 
  #   appointments.map{|appointment| appointment.doctor}
  # end 
  
  def self.all
    @@all
  end
end 