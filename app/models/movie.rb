class Movie < ApplicationRecord
  include PgSearch::Model
  belongs_to :director

  multisearchable against: [:title, :syllabus]  
end
