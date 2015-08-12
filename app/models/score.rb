class Score < ActiveRecord::Base
  attr_accessible :by_team_id, :communication, :fair_mind, :fouls, :game, :positivity, :rules
  belongs_to :team

  validates :team_id, presence: true
  validates :by_team_id, presence: true
  validates :game, presence: true
  validates :rules, presence: true, :inclusion => 1..5
end
