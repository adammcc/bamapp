class Location < ApplicationRecord
  has_many_attached :images
  has_many :attachments
  accepts_nested_attributes_for :attachments

  validates :name, presence: true

  def large_path(image)
    Rails.application.routes.url_helpers.rails_representation_url(
      image.variant(
        resize: "900x900"
      ).processed, only_path: true
    )
  end

  def thumb_path(image)
    Rails.application.routes.url_helpers.rails_representation_url(
      image.variant(resize: "400x400"
    ).processed, only_path: true)
  end
end
