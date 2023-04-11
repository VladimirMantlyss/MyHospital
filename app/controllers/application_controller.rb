class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    main_path
  end

  def after_sign_out_path_for(resource_or_scope)
    main_path
  end

  def after_sign_up_path_for(resource)
    main_path
  end

  def ClinicFuller(count)
    i = 0

    count.times do
      i += 1
      puts "#{i}" + " Имя клиники: "
      clinicName = gets.chomp

      puts "Адресс: "
      address = gets.chomp

      puts "Телефон: "
      telephone = gets.chomp

      Clinic.create(name: clinicName, address: address, phone: telephone)
    end
  end

  def SpizializationFuller(count)
    i = 0

    count.times do
      i += 1
      puts "#{i}" + " Имя специализации: "
      name = gets.chomp

      puts "Описание: "
      description = gets.chomp

      Specialization.create(name: name, description: description)
    end
  end

  def DepartmentFuller(count)
    i = 0

    count.times do
      i += 1
      puts "#{i}" + " Имя отделения: "
      name = gets.chomp

      puts "Описание: "
      description = gets.chomp

      puts "ID клиники: "
      reference = gets.chomp

      Department.create(name: name, description: description, clinic: Clinic.find(reference))
    end
  end
end
