class Game < ActiveRecord::Base

	belongs_to :challenger, class_name: "Player", foreign_key: "challenger_id"

	belongs_to :challengee, class_name: "Player", foreign_key: "challengee_id"

	has_many :moves

end