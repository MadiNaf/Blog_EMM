class User < ApplicationRecord
#avantd de sauvegarder les nom et prenom j eles met en downcase
    befor_save { self.firstname = firstname.downcase}
    befor_save { self.lastname = lastname.downcase}

    validates :sex, presence: true
    validates :firstname, presence: true, length: {minimum: 3, maximum: 25}
    validates :lastname, presence: true, length: {minimum: 3, maximum: 25}
end
