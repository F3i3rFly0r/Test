class Mitarbeiter < ActiveRecord::Base
  belongs_to :firma
  validates_presence_of :nachname
  validates_presence_of :vorname, :message=>"Bitte angeben"
end
