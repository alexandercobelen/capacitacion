class Client < ApplicationRecord
    GENDERS = {
        0 => 'Mujer',
        1 => 'Hombre'
    }
    validates :name, presence: true
    validates :last_name, presence: true
    validates :gender, presence: true
    validates :card_id, presence: true
    validates :id_type, presence: true
    ID_TYPE = {
        1 => "Cedula",
        2 => "Nit",
        3 => "Registro Civil",
        4 => "Pasaporte"
    }
    def gender_to_s
      GENDERS[gender]
    end    

    def id_type_to_s
        ID_TYPE[id_type]
    end    
    
end
