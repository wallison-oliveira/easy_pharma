# == Schema Information
#
# Table name: patients
#
#  id                   :bigint           not null, primary key
#  address_city         :string(255)
#  address_neighborhood :string(255)
#  address_state        :string(255)
#  address_street       :string(255)
#  birthdate            :date
#  cpf                  :string(255)
#  name                 :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Patient < ApplicationRecord
  validates :name, presence: true
  validates :cpf, presence: true, uniqueness: { case_sensitive: false }
  validates :birthdate, presence: true
  validates :address_city, presence: true
  validates :address_neighborhood, presence: true
  validates :address_state, presence: true
  validates :address_street, presence: true
end
