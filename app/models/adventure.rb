class Adventure < ActiveRecord::Base
  ADVENTURE_TYPES = { camping: 0, hiking: 1, fishing: 2, geocaching: 3, skiing_and_snowboarding: 4,
                      coast: 5, backpacking: 6, animal_sighting: 7 }

  has_many :photos
  accepts_nested_attributes_for :photos

  has_attached_file :photo, storage: :s3, s3_credentials: S3_CREDENTIALS,
                    styles: {thumb: '50x50#', medium: '100x100#', large: '150x150#', xlarge: '200x200#'}

end
