# == Schema Information
#
# Table name: teams
#
#  id            :integer          not null, primary key
#  name          :string(255)      default(""), not null
#  captian       :string(255)      default("")
#  spiritcaptian :string(255)
#  city          :string(255)
#  country       :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Team < ActiveRecord::Base
  attr_accessible :captian, :city, :country, :name, :spiritcaptian

  validates :name, presence: true
end
