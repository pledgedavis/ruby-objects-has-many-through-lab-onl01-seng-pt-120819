# class Doctor
# 
# attr_accessor :name
# 
# @@all = []
# def self.all
#     @@all
#   end
# 
#   attr_accessor :name, :appointments, :patient
# 
# def initialize(name)
#  @appointments = []
# @name = name
# 
# @@all << self
# # self.class.all << self
# end
# 
# def new_appointment(date, patient)
#   appointment = Appointment.new(patient, date, self)
#   @appointments << appointment
#     appointment
# end
# 
# 
# def patients
#     @appointments.collect do |appointment|
#       appointment.patient
#     end
#   end
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# 
# end













class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(date, patient)
     appointment = Appointment.new(patient, date, self)
     @appointments << appointment
     appointment
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end


class Patient
  attr_accessor :name 
  
  def initialize(name)
    @name=name
  end
  
   def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
  
end

class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor

    @@all << self
  end

  def self.all
    @@all
  end
end
