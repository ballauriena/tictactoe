class Player < ActiveRecord::Base

	has_many :games_created, class_name: "Game", foreign_key: "challenger_id"

	has_many :games_accepted, class_name: "Game", foreign_key: "challengee_id"

	has_many :moves

end