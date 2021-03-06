class ConferenceExport < ApplicationRecord
  belongs_to :conference
  has_attached_file :tarball
  validates_attachment_content_type :tarball, content_type: [/gzip/]
  validates :locale, :conference, presence: true
end
