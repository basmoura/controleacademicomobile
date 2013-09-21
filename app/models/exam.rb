class Exam < ActiveRecord::Base
  attr_accessible :dt_exam, :grade, :location, :course_id, :subjects_attributes

  belongs_to :course
  has_many :subjects
  accepts_nested_attributes_for :subjects, allow_destroy: true

  def dt_exam
    read_attribute(:dt_exam).strftime("%d/%m/%Y") unless read_attribute(:dt_exam).nil?
  end
  self.per_page = 5
end
