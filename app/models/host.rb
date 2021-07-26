class Host < ApplicationRecord

validates_numericality_of :sex, less_than_or_equal_to: 1, greater_than_or_equal_to: 0
  def full_name
  first_name + " " + last_name
end

def sexo
    if sex == 1
      "Masculino"
    else
      "Femenino"
    end
  end
end
