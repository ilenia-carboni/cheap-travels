class Review < ApplicationRecord
	belongs_to :user

	validates :user_id, :presence=>true
	validates :place, :presence=>true, :format => {:with => /0|1|2|3|4|5|6|7|8|9/}
	validates :rating, :presence=>true
	validates :rating, :numericality => {:in => 1..5}
	validates :body, :presence=>true
end
